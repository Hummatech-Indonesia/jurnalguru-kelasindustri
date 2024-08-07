import 'package:freezed_annotation/freezed_annotation.dart';

import '../enums/attendance_type.dart';
import 'classroom.dart';

part 'journal.freezed.dart';
part 'journal.g.dart';

@freezed
class Journal with _$Journal {
  factory Journal({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'photo') String? photo,
    @JsonKey(name: 'date') DateTime? date,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'classroom_id') String? classroomId,
    @JsonKey(name: 'created_by') String? createdBy,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'permits') int? permits,
    @JsonKey(name: 'sicks') int? sicks,
    @JsonKey(name: 'absents') int? absents,
    @JsonKey(name: 'classroom') Classroom? classroom,
    @JsonKey(name: 'attendance_alfa')
    List<JournalAttendance>? absentsAttendance,
    @JsonKey(name: 'attendance_ijin')
    List<JournalAttendance>? permitsAttendance,
    @JsonKey(name: 'attendance_sakit') List<JournalAttendance>? sicksAttendance,
  }) = _Journal;

  factory Journal.fromJson(Object? json) =>
      _$JournalFromJson(json as Map<String, dynamic>);

  static List<Journal> fromJsonList(Object? json) {
    if (json == null) {
      return [];
    }

    return (json as List<dynamic>).map((e) => Journal.fromJson(e)).toList();
  }
}

@freezed
class JournalAttendance with _$JournalAttendance {
  factory JournalAttendance({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'journal_id') String? journalId,
    @JsonKey(name: 'student_classroom_id') int? studentClassroomId,
    @JsonKey(name: 'attendance') AttendanceType? attendance,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _JournalAttendance;

  factory JournalAttendance.fromJson(Object? json) =>
      _$JournalAttendanceFromJson(json as Map<String, dynamic>);
}
