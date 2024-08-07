import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enums/attendance_type.dart';

part 'update_journal_request.freezed.dart';

@freezed
class UpdateJournalRequest with _$UpdateJournalRequest {
  factory UpdateJournalRequest({
    required String id,
    required String? title,
    required File? image,
    required String? description,
    required String? teacherId,
    required Map<int, AttendanceType>? attendancesRecord,
  }) = _UpdateJournalRequest;
}
