// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classroom.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassroomImpl _$$ClassroomImplFromJson(Map<String, dynamic> json) =>
    _$ClassroomImpl(
      id: json['id'] as String?,
      generationId: const JsonStringToInt().fromJson(json['generation_id']),
      schoolId: json['school_id'] as String?,
      name: json['name'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      devisionId: json['devision_id'] as String?,
      students: const JsonStringToInt().fromJson(json['students']),
    );

Map<String, dynamic> _$$ClassroomImplToJson(_$ClassroomImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'generation_id': const JsonStringToInt().toJson(instance.generationId),
      'school_id': instance.schoolId,
      'name': instance.name,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'devision_id': instance.devisionId,
      'students': const JsonStringToInt().toJson(instance.students),
    };
