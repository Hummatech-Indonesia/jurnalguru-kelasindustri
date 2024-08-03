import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enums/attendance_type.dart';

part 'add_journal_request.freezed.dart';

@freezed
class AddJournalRequest with _$AddJournalRequest {
  factory AddJournalRequest({
    required String title,
    required File image,
    required String description,
    required String teacherId,
    required Map<int, AttendanceType> attendancesRecord,
  }) = _AddJournalRequest;
}
