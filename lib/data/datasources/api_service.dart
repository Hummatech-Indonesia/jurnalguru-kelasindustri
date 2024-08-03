import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/failure/failure.dart';
import '../../domain/services/dio_provider.dart';
import '../models/response_model.dart';

part 'api_service.g.dart';

class ApiService {
  final Dio _dio;

  ApiService(this._dio);

  Dio get dio => _dio;

  Future<Either<Failure, ResponseModel<T>>> get<T>(
      String path, T Function(Object? json) fromJsonT) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(path);

      if (response.data == null) {
        return Left(ValidationFailure('Data is null'));
      }

      return Right(ResponseModel.fromJson(response.data!, fromJsonT));
    } on Exception catch (e) {
      return Left(ValidationFailure(e.toString()));
    }
  }

  Future<Either<Failure, ResponseModel<T>>> post<T>(
    String path,
    T Function(Object? json) fromJsonT, {
    Object? data,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(path, data: data);

      if (response.data == null) {
        return Left(EmptyResponseFailure('Data is null'));
      }

      return Right(ResponseModel.fromJson(response.data!, fromJsonT));
    } on DioException catch (e) {
      if (e.response?.data != null) {
        final response = ResponseModel.fromJson(e.response!.data!, fromJsonT);
        return Left(ValidationFailure(response.message ?? '-'));
      }

      return Left(Failure(e.toString()));
    }
  }

  Future<ResponseModel> put<T>(
      String path, T Function(Object? json) fromJsonT) async {
    final response = await _dio.put<Map<String, dynamic>>(path);

    if (response.data == null) {
      return ResponseModel();
    }

    return ResponseModel.fromJson(response.data!, fromJsonT);
  }

  Future<Either<Failure, ResponseModel<T>>> delete<T>(
    String path,
    T Function(Object? json) fromJsonT,
  ) async {
    try {
      final response = await _dio.delete<Map<String, dynamic>>(path);

      if (response.data == null) {
        return Left(EmptyResponseFailure('Data is null'));
      }

      return Right(ResponseModel.fromJson(response.data!, fromJsonT));
    } on DioException catch (e) {
      if (e.response?.data != null) {
        final response = ResponseModel.fromJson(e.response!.data!, fromJsonT);
        return Left(ValidationFailure(response.message ?? '-'));
      }

      return Left(Failure(e.toString()));
    }
  }
}

@riverpod
ApiService apiService(ApiServiceRef ref) {
  return ApiService(ref.read(dioProvider));
}
