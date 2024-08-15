import 'package:dio/dio.dart';

import '../../../data/models/response_model.dart';

class Failure {
  final String message;

  Failure(this.message);

  @override
  String toString() {
    return message;
  }

  static Failure fromDioException(DioException exception) {
    if (exception.response?.data is Map) {
      final response =
          ResponseModel.fromJson(exception.response!.data!, (e) => e);

      final statusCode = exception.response?.statusCode;

      if (statusCode == 422) {
        return ValidationFailure(
          response.message ?? '-',
          data: response.data as Map<String, List<String>>,
        );
      } else if (statusCode == 500) {
        return ResponseFailure.dio(exception.response!);
      } else {
        return (ResponseFailure.complete(exception.response!, response));
      }
    } else {
      return switch (exception.type) {
        DioExceptionType.connectionError =>
          NetworkFailure('Tidak dapat terhubung ke server'),
        DioExceptionType.connectionTimeout =>
          NetworkFailure('Server tidak menananggapi'),
        _ => NetworkFailure(
            exception.message ?? 'Network error',
          )
      };
    }
  }
}

class NetworkFailure extends Failure {
  NetworkFailure(super.message);

  factory NetworkFailure.fromException(Exception e) {
    return NetworkFailure(e.toString());
  }
}

class ResponseFailure extends Failure {
  final Response? dioResponse;
  final ResponseModel? response;

  ResponseFailure(super.message, {this.dioResponse, this.response});

  factory ResponseFailure.complete(
    Response dioResponse,
    ResponseModel response,
  ) {
    return ResponseFailure(
      response.message ?? 'Data kosong',
      dioResponse: dioResponse,
      response: response,
    );
  }

  factory ResponseFailure.dio(Response dioResponse) {
    return ResponseFailure(
      dioResponse.statusMessage ?? 'Data kosong',
      dioResponse: dioResponse,
    );
  }

  factory ResponseFailure.from(ResponseModel response) {
    return ResponseFailure(
      response.message ?? 'Data kosong',
      response: response,
    );
  }
}

class ValidationFailure extends Failure {
  final Map<String, List<String>>? data;

  ValidationFailure(super.message, {this.data});

  factory ValidationFailure.fromResponse(ResponseModel response) {
    final message = response.message ?? '-';
    final data = response.data as Map<String, dynamic>;

    return ValidationFailure(
      message,
      data: {
        for (final key in data.keys) key: data[key] as List<String>,
      },
    );
  }
}

class ParsingFailure extends Failure {
  ParsingFailure([super.message = "Gagal menguraikan data dari server"]);
}
