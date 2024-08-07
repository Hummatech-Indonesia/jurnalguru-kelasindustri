import 'package:either_dart/either.dart';

import '../../domain/entities/failure/failure.dart';
import '../../domain/entities/student.dart';
import '../../domain/repositories/student_repository.dart';
import '../datasources/api_service.dart';

class StudentRepositoryImpl implements StudentRepository {
  final ApiService _api;

  StudentRepositoryImpl(this._api);

  @override
  Future<Either<Failure, List<Student>>> getAllStudents(
    String teacherId,
  ) async {
    final result = await _api.get<List<Student>>(
      '/student/get-student-by-teacher/$teacherId',
      Student.fromJsonList,
    );

    return result.fold(
      (failure) => Left(failure),
      (success) => Right(success.data!),
    );
  }
}
