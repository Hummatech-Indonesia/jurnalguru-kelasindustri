import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/entities/student.dart';
import '../../../domain/repositories/student_repository.dart';
import '../auth/auth_notifier.dart';

part 'students_provider.g.dart';

@Riverpod(keepAlive: true)
Future<List<Student>> students(StudentsRef ref) async {
  final repository = ref.watch(studentRepositoryProvider);
  final teacherId =
      ref.watch(authNotifierProvider.select((state) => state.user?.id));

  if (teacherId == null) {
    return [];
  }

  final result = await repository.getAllStudents(teacherId);

  return result.fold(
    (failure) => throw failure,
    (success) => success,
  );
}
