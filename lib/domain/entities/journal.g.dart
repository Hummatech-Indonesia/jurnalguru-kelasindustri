// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JournalImpl _$$JournalImplFromJson(Map<String, dynamic> json) =>
    _$JournalImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      photo: json['photo'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      description: json['description'] as String?,
      classroomId: json['classroom_id'] as String?,
      createdBy: json['created_by'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      permits: const JsonStringToInt().fromJson(json['permits']),
      sicks: const JsonStringToInt().fromJson(json['sicks']),
      absents: const JsonStringToInt().fromJson(json['absents']),
      classroom: json['classroom'] == null
          ? null
          : Classroom.fromJson(json['classroom']),
      absentsAttendance: (json['attendance_alfa'] as List<dynamic>?)
          ?.map(JournalAttendance.fromJson)
          .toList(),
      permitsAttendance: (json['attendance_ijin'] as List<dynamic>?)
          ?.map(JournalAttendance.fromJson)
          .toList(),
      sicksAttendance: (json['attendance_sakit'] as List<dynamic>?)
          ?.map(JournalAttendance.fromJson)
          .toList(),
    );

Map<String, dynamic> _$$JournalImplToJson(_$JournalImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'photo': instance.photo,
      'date': instance.date?.toIso8601String(),
      'description': instance.description,
      'classroom_id': instance.classroomId,
      'created_by': instance.createdBy,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'permits': const JsonStringToInt().toJson(instance.permits),
      'sicks': const JsonStringToInt().toJson(instance.sicks),
      'absents': const JsonStringToInt().toJson(instance.absents),
      'classroom': instance.classroom,
      'attendance_alfa': instance.absentsAttendance,
      'attendance_ijin': instance.permitsAttendance,
      'attendance_sakit': instance.sicksAttendance,
    };

_$JournalAttendanceImpl _$$JournalAttendanceImplFromJson(
        Map<String, dynamic> json) =>
    _$JournalAttendanceImpl(
      id: const JsonStringToInt().fromJson(json['id']),
      journalId: json['journal_id'] as String?,
      studentClassroomId:
          const JsonStringToInt().fromJson(json['student_classroom_id']),
      attendance:
          $enumDecodeNullable(_$AttendanceTypeEnumMap, json['attendance']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$JournalAttendanceImplToJson(
        _$JournalAttendanceImpl instance) =>
    <String, dynamic>{
      'id': const JsonStringToInt().toJson(instance.id),
      'journal_id': instance.journalId,
      'student_classroom_id':
          const JsonStringToInt().toJson(instance.studentClassroomId),
      'attendance': _$AttendanceTypeEnumMap[instance.attendance],
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

const _$AttendanceTypeEnumMap = {
  AttendanceType.present: 'hadir',
  AttendanceType.sick: 'sakit',
  AttendanceType.absent: 'alfa',
  AttendanceType.permit: 'ijin',
};
