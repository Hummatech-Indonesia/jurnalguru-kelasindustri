import 'dart:io';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/entities/journal.dart';
import '../../../domain/entities/requests/add_journal_request.dart';
import '../../../domain/entities/requests/update_journal_request.dart';
import '../../../domain/enums/attendance_type.dart';
import '../../../domain/repositories/journal_repository.dart';
import '../auth/auth_notifier.dart';
import '../student/students_provider.dart';
import 'journal_provider.dart';

part 'journals_provider.g.dart';

@Riverpod(keepAlive: true)
class Journals extends _$Journals {
  @override
  Future<List<Journal>> build() async {
    ref.watch(authNotifierProvider.select((state) => state.isLoggedIn));

    final result = await ref.watch(journalRepositoryProvider).getAllJournals();

    return result.fold(
      (failure) => Future.error(failure),
      (success) => success,
    );
  }

  Future<void> add({
    required String title,
    required String description,
    required File image,
    required List<int> sicks,
    required List<int> absents,
    required List<int> permits,
  }) async {
    final repository = ref.read(journalRepositoryProvider);
    final teacherId = ref.read(
      authNotifierProvider.select((state) => state.user?.id),
    );
    final students = ref.read(
      studentsProvider.select((value) => value.value ?? []),
    );

    if (teacherId == null) return;

    AttendanceType getAttendanceType(int id) {
      if (sicks.contains(id)) {
        return AttendanceType.sick;
      } else if (absents.contains(id)) {
        return AttendanceType.absent;
      } else if (permits.contains(id)) {
        return AttendanceType.permit;
      } else {
        return AttendanceType.present;
      }
    }

    final request = AddJournalRequest(
      title: title,
      description: description,
      image: image,
      teacherId: teacherId,
      attendancesRecord: {
        for (final student in students)
          student.studentClassroom!.id!:
              getAttendanceType(student.studentClassroom!.id!),
      },
    );

    await repository.addJournal(request);

    ref.invalidateSelf();
  }

  Future<void> edit({
    Journal? journal,
    String? title,
    String? description,
    File? image,
    List<int>? sicks,
    List<int>? absents,
    List<int>? permits,
  }) async {
    final repository = ref.read(journalRepositoryProvider);
    final teacherId = ref.read(
      authNotifierProvider.select((state) => state.user?.id),
    );
    final students = ref.read(
      studentsProvider.select((value) => value.value ?? []),
    );

    if (teacherId == null) return;

    AttendanceType getAttendanceType(int id) {
      if (sicks?.contains(id) == true) {
        return AttendanceType.sick;
      } else if (absents?.contains(id) == true) {
        return AttendanceType.absent;
      } else if (permits?.contains(id) == true) {
        return AttendanceType.permit;
      } else {
        return AttendanceType.present;
      }
    }

    final attendancesRecord = {
      for (final student in students)
        student.studentClassroom!.id!:
            getAttendanceType(student.studentClassroom!.id!),
    };

    final request = UpdateJournalRequest(
      id: journal!.id!,
      title: title,
      description: description,
      image: image,
      teacherId: teacherId,
      attendancesRecord: attendancesRecord,
    );

    await repository.updateJournal(request);

    ref.invalidate(journalProvider(journal.id));
    ref.invalidateSelf();
  }

  Future<void> delete(Journal journal) async {
    final repository = ref.read(journalRepositoryProvider);

    await repository.deleteJournal(journal);

    ref.invalidateSelf();
  }
}
