// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JournalImpl _$$JournalImplFromJson(Map<String, dynamic> json) =>
    _$JournalImpl(
      id: (json['id'] as num?)?.toInt(),
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
      permits: (json['permits'] as num?)?.toInt(),
      sicks: (json['sicks'] as num?)?.toInt(),
      absents: (json['absents'] as num?)?.toInt(),
      classroom: json['classroom'] == null
          ? null
          : Classroom.fromJson(json['classroom']),
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
      'permits': instance.permits,
      'sicks': instance.sicks,
      'absents': instance.absents,
      'classroom': instance.classroom,
    };
