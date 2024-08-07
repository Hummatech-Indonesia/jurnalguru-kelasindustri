// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentImpl _$$StudentImplFromJson(Map<String, dynamic> json) =>
    _$StudentImpl(
      id: (json['id'] as num?)?.toInt(),
      schoolId: json['schoolId'] as String?,
      studentId: json['studentId'] as String?,
      studentClassroom: json['student_classroom'] == null
          ? null
          : StudentClassroom.fromJson(json['student_classroom']),
      student: json['student'] == null
          ? null
          : StudentDetail.fromJson(json['student']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$StudentImplToJson(_$StudentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'schoolId': instance.schoolId,
      'studentId': instance.studentId,
      'student_classroom': instance.studentClassroom,
      'student': instance.student,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$StudentDetailImpl _$$StudentDetailImplFromJson(Map<String, dynamic> json) =>
    _$StudentDetailImpl(
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
      bank: json['bank'] as String?,
      accountNumber: json['account_number'] as String?,
      point: const JsonStringToInt().fromJson(json['point']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$StudentDetailImplToJson(_$StudentDetailImpl instance) =>
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
      'bank': instance.bank,
      'account_number': instance.accountNumber,
      'point': const JsonStringToInt().toJson(instance.point),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$StudentClassroomImpl _$$StudentClassroomImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentClassroomImpl(
      id: const JsonStringToInt().fromJson(json['id']),
      studentchoolId: json['student_school_id'] as String?,
      classroomId: json['classroom_id'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$StudentClassroomImplToJson(
        _$StudentClassroomImpl instance) =>
    <String, dynamic>{
      'id': const JsonStringToInt().toJson(instance.id),
      'student_school_id': instance.studentchoolId,
      'classroom_id': instance.classroomId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
