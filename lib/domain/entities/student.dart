import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utilities/json_converters.dart';

part 'student.freezed.dart';
part 'student.g.dart';

@freezed
class Student with _$Student {
  factory Student({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'schoolId') String? schoolId,
    @JsonKey(name: 'studentId') String? studentId,
    @JsonKey(name: 'student_classroom') StudentClassroom? studentClassroom,
    @JsonKey(name: 'student') StudentDetail? student,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Student;

  factory Student.fromJson(Object? json) =>
      _$StudentFromJson(json as Map<String, dynamic>);

  static List<Student> fromJsonList(Object? json) {
    if (json == null) {
      return [];
    }

    return (json as List<dynamic>).map((e) => Student.fromJson(e)).toList();
  }
}

@freezed
class StudentDetail with _$StudentDetail {
  factory StudentDetail({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'email_verified_at') DateTime? emailVerifiedAt,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'date_birth') DateTime? dateBirth,
    @JsonKey(name: 'national_student_id') String? nationalStudentId,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'motivation') String? motivation,
    @JsonKey(name: 'photo') String? photo,
    @JsonKey(name: 'bank') String? bank,
    @JsonKey(name: 'account_number') String? accountNumber,
    // @JsonKey(name: 'headmaster') int? headmaster,
    @JsonKey(name: 'point') @JsonStringToInt() int? point,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _StudentDetail;

  factory StudentDetail.fromJson(Object? json) =>
      _$StudentDetailFromJson(json as Map<String, dynamic>);
}

@freezed
class StudentClassroom with _$StudentClassroom {
  factory StudentClassroom({
    @JsonKey(name: 'id') @JsonStringToInt() int? id,
    @JsonKey(name: 'student_school_id') String? studentchoolId,
    @JsonKey(name: 'classroom_id') String? classroomId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _StudentClassroom;

  factory StudentClassroom.fromJson(Object? json) =>
      _$StudentClassroomFromJson(json as Map<String, dynamic>);
}
