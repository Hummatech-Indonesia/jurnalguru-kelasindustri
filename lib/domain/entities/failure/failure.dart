import 'package:dio/dio.dart';

class Failure {
  final String message;

  Failure(this.message);

  @override
  String toString() {
    return message;
  }
}

class NetworkFailure extends Failure {
  NetworkFailure(super.message);

  factory NetworkFailure.fromException(Exception e) {
    return NetworkFailure(e.toString());
  }

  factory NetworkFailure.fromDioException(DioException exception) {
    if (exception.response?.data is Map &&
        exception.response!.data['message'] != null) {
      return NetworkFailure(exception.response!.data['message']);
    } else {
      return NetworkFailure(
        exception.message ?? 'Network error',
      );
    }
  }
}

class EmptyResponseFailure extends Failure {
  EmptyResponseFailure(super.message);
}

class ValidationFailure extends Failure {
  ValidationFailure(super.message);
}

class ParsingFailure extends Failure {
  ParsingFailure([super.message = "Gagal menguraikan data dari server"]);
}
