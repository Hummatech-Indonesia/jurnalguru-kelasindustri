import 'package:either_dart/either.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/datasources/api_service.dart';
import '../../data/repositories/student_repository_impl.dart';
import '../entities/failure/failure.dart';
import '../entities/student.dart';

part 'student_repository.g.dart';

abstract class StudentRepository {
  Future<Either<Failure, List<Student>>> getAllStudents(
    String teacherId,
  );
}

@Riverpod(keepAlive: true)
StudentRepository studentRepository(StudentRepositoryRef ref) {
  return StudentRepositoryImpl(ref.watch(apiServiceProvider));
}
