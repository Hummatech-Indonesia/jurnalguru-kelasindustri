// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      emailVerifiedAt: json['email_verified_at'] == null
          ? null
          : DateTime.parse(json['email_verified_at'] as String),
      phoneNumber: json['phone_number'] as String?,
      address: json['address'] as String?,
      gender: json['gender'] as String?,
      dateBirth: json['date_birth'] == null
          ? null
          : DateTime.parse(json['date_birth'] as String),
      nationalStudentId: json['national_student_id'] as String?,
      status: json['status'] as String?,
      motivation: json['motivation'] as String?,
      photo: json['photo'] as String?,
      point: const JsonStringToInt().fromJson(json['point']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'email_verified_at': instance.emailVerifiedAt?.toIso8601String(),
      'phone_number': instance.phoneNumber,
      'address': instance.address,
      'gender': instance.gender,
      'date_birth': instance.dateBirth?.toIso8601String(),
      'national_student_id': instance.nationalStudentId,
      'status': instance.status,
      'motivation': instance.motivation,
      'photo': instance.photo,
      'point': const JsonStringToInt().toJson(instance.point),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
