// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Student _$StudentFromJson(Map<String, dynamic> json) {
  return _Student.fromJson(json);
}

/// @nodoc
mixin _$Student {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'schoolId')
  String? get schoolId => throw _privateConstructorUsedError;
  @JsonKey(name: 'studentId')
  String? get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_classroom')
  StudentClassroom? get studentClassroom => throw _privateConstructorUsedError;
  @JsonKey(name: 'student')
  StudentDetail? get student => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentCopyWith<Student> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentCopyWith<$Res> {
  factory $StudentCopyWith(Student value, $Res Function(Student) then) =
      _$StudentCopyWithImpl<$Res, Student>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'schoolId') String? schoolId,
      @JsonKey(name: 'studentId') String? studentId,
      @JsonKey(name: 'student_classroom') StudentClassroom? studentClassroom,
      @JsonKey(name: 'student') StudentDetail? student,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});

  $StudentClassroomCopyWith<$Res>? get studentClassroom;
  $StudentDetailCopyWith<$Res>? get student;
}

/// @nodoc
class _$StudentCopyWithImpl<$Res, $Val extends Student>
    implements $StudentCopyWith<$Res> {
  _$StudentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? schoolId = freezed,
    Object? studentId = freezed,
    Object? studentClassroom = freezed,
    Object? student = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      schoolId: freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as String?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
      studentClassroom: freezed == studentClassroom
          ? _value.studentClassroom
          : studentClassroom // ignore: cast_nullable_to_non_nullable
              as StudentClassroom?,
      student: freezed == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as StudentDetail?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StudentClassroomCopyWith<$Res>? get studentClassroom {
    if (_value.studentClassroom == null) {
      return null;
    }

    return $StudentClassroomCopyWith<$Res>(_value.studentClassroom!, (value) {
      return _then(_value.copyWith(studentClassroom: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StudentDetailCopyWith<$Res>? get student {
    if (_value.student == null) {
      return null;
    }

    return $StudentDetailCopyWith<$Res>(_value.student!, (value) {
      return _then(_value.copyWith(student: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StudentImplCopyWith<$Res> implements $StudentCopyWith<$Res> {
  factory _$$StudentImplCopyWith(
          _$StudentImpl value, $Res Function(_$StudentImpl) then) =
      __$$StudentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'schoolId') String? schoolId,
      @JsonKey(name: 'studentId') String? studentId,
      @JsonKey(name: 'student_classroom') StudentClassroom? studentClassroom,
      @JsonKey(name: 'student') StudentDetail? student,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});

  @override
  $StudentClassroomCopyWith<$Res>? get studentClassroom;
  @override
  $StudentDetailCopyWith<$Res>? get student;
}

/// @nodoc
class __$$StudentImplCopyWithImpl<$Res>
    extends _$StudentCopyWithImpl<$Res, _$StudentImpl>
    implements _$$StudentImplCopyWith<$Res> {
  __$$StudentImplCopyWithImpl(
      _$StudentImpl _value, $Res Function(_$StudentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? schoolId = freezed,
    Object? studentId = freezed,
    Object? studentClassroom = freezed,
    Object? student = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$StudentImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      schoolId: freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as String?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String?,
      studentClassroom: freezed == studentClassroom
          ? _value.studentClassroom
          : studentClassroom // ignore: cast_nullable_to_non_nullable
              as StudentClassroom?,
      student: freezed == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as StudentDetail?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentImpl implements _Student {
  _$StudentImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'schoolId') this.schoolId,
      @JsonKey(name: 'studentId') this.studentId,
      @JsonKey(name: 'student_classroom') this.studentClassroom,
      @JsonKey(name: 'student') this.student,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$StudentImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'schoolId')
  final String? schoolId;
  @override
  @JsonKey(name: 'studentId')
  final String? studentId;
  @override
  @JsonKey(name: 'student_classroom')
  final StudentClassroom? studentClassroom;
  @override
  @JsonKey(name: 'student')
  final StudentDetail? student;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Student(id: $id, schoolId: $schoolId, studentId: $studentId, studentClassroom: $studentClassroom, student: $student, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.studentClassroom, studentClassroom) ||
                other.studentClassroom == studentClassroom) &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, schoolId, studentId,
      studentClassroom, student, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentImplCopyWith<_$StudentImpl> get copyWith =>
      __$$StudentImplCopyWithImpl<_$StudentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentImplToJson(
      this,
    );
  }
}

abstract class _Student implements Student {
  factory _Student(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'schoolId') final String? schoolId,
      @JsonKey(name: 'studentId') final String? studentId,
      @JsonKey(name: 'student_classroom')
      final StudentClassroom? studentClassroom,
      @JsonKey(name: 'student') final StudentDetail? student,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt}) = _$StudentImpl;

  factory _Student.fromJson(Map<String, dynamic> json) = _$StudentImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'schoolId')
  String? get schoolId;
  @override
  @JsonKey(name: 'studentId')
  String? get studentId;
  @override
  @JsonKey(name: 'student_classroom')
  StudentClassroom? get studentClassroom;
  @override
  @JsonKey(name: 'student')
  StudentDetail? get student;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$StudentImplCopyWith<_$StudentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StudentDetail _$StudentDetailFromJson(Map<String, dynamic> json) {
  return _StudentDetail.fromJson(json);
}

/// @nodoc
mixin _$StudentDetail {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verified_at')
  DateTime? get emailVerifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_birth')
  DateTime? get dateBirth => throw _privateConstructorUsedError;
  @JsonKey(name: 'national_student_id')
  String? get nationalStudentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'motivation')
  String? get motivation => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo')
  String? get photo => throw _privateConstructorUsedError;
  @JsonKey(name: 'bank')
  String? get bank => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_number')
  String? get accountNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'headmaster')
  int? get headmaster => throw _privateConstructorUsedError;
  @JsonKey(name: 'point')
  int? get point => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentDetailCopyWith<StudentDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentDetailCopyWith<$Res> {
  factory $StudentDetailCopyWith(
          StudentDetail value, $Res Function(StudentDetail) then) =
      _$StudentDetailCopyWithImpl<$Res, StudentDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
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
      @JsonKey(name: 'headmaster') int? headmaster,
      @JsonKey(name: 'point') int? point,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$StudentDetailCopyWithImpl<$Res, $Val extends StudentDetail>
    implements $StudentDetailCopyWith<$Res> {
  _$StudentDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? phoneNumber = freezed,
    Object? address = freezed,
    Object? gender = freezed,
    Object? dateBirth = freezed,
    Object? nationalStudentId = freezed,
    Object? status = freezed,
    Object? motivation = freezed,
    Object? photo = freezed,
    Object? bank = freezed,
    Object? accountNumber = freezed,
    Object? headmaster = freezed,
    Object? point = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      dateBirth: freezed == dateBirth
          ? _value.dateBirth
          : dateBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nationalStudentId: freezed == nationalStudentId
          ? _value.nationalStudentId
          : nationalStudentId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      motivation: freezed == motivation
          ? _value.motivation
          : motivation // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      bank: freezed == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: freezed == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      headmaster: freezed == headmaster
          ? _value.headmaster
          : headmaster // ignore: cast_nullable_to_non_nullable
              as int?,
      point: freezed == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentDetailImplCopyWith<$Res>
    implements $StudentDetailCopyWith<$Res> {
  factory _$$StudentDetailImplCopyWith(
          _$StudentDetailImpl value, $Res Function(_$StudentDetailImpl) then) =
      __$$StudentDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
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
      @JsonKey(name: 'headmaster') int? headmaster,
      @JsonKey(name: 'point') int? point,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$StudentDetailImplCopyWithImpl<$Res>
    extends _$StudentDetailCopyWithImpl<$Res, _$StudentDetailImpl>
    implements _$$StudentDetailImplCopyWith<$Res> {
  __$$StudentDetailImplCopyWithImpl(
      _$StudentDetailImpl _value, $Res Function(_$StudentDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? phoneNumber = freezed,
    Object? address = freezed,
    Object? gender = freezed,
    Object? dateBirth = freezed,
    Object? nationalStudentId = freezed,
    Object? status = freezed,
    Object? motivation = freezed,
    Object? photo = freezed,
    Object? bank = freezed,
    Object? accountNumber = freezed,
    Object? headmaster = freezed,
    Object? point = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$StudentDetailImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      dateBirth: freezed == dateBirth
          ? _value.dateBirth
          : dateBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nationalStudentId: freezed == nationalStudentId
          ? _value.nationalStudentId
          : nationalStudentId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      motivation: freezed == motivation
          ? _value.motivation
          : motivation // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      bank: freezed == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: freezed == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      headmaster: freezed == headmaster
          ? _value.headmaster
          : headmaster // ignore: cast_nullable_to_non_nullable
              as int?,
      point: freezed == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentDetailImpl implements _StudentDetail {
  _$StudentDetailImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'email_verified_at') this.emailVerifiedAt,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'gender') this.gender,
      @JsonKey(name: 'date_birth') this.dateBirth,
      @JsonKey(name: 'national_student_id') this.nationalStudentId,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'motivation') this.motivation,
      @JsonKey(name: 'photo') this.photo,
      @JsonKey(name: 'bank') this.bank,
      @JsonKey(name: 'account_number') this.accountNumber,
      @JsonKey(name: 'headmaster') this.headmaster,
      @JsonKey(name: 'point') this.point,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$StudentDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentDetailImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'email_verified_at')
  final DateTime? emailVerifiedAt;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  @JsonKey(name: 'address')
  final String? address;
  @override
  @JsonKey(name: 'gender')
  final String? gender;
  @override
  @JsonKey(name: 'date_birth')
  final DateTime? dateBirth;
  @override
  @JsonKey(name: 'national_student_id')
  final String? nationalStudentId;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'motivation')
  final String? motivation;
  @override
  @JsonKey(name: 'photo')
  final String? photo;
  @override
  @JsonKey(name: 'bank')
  final String? bank;
  @override
  @JsonKey(name: 'account_number')
  final String? accountNumber;
  @override
  @JsonKey(name: 'headmaster')
  final int? headmaster;
  @override
  @JsonKey(name: 'point')
  final int? point;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'StudentDetail(id: $id, name: $name, email: $email, emailVerifiedAt: $emailVerifiedAt, phoneNumber: $phoneNumber, address: $address, gender: $gender, dateBirth: $dateBirth, nationalStudentId: $nationalStudentId, status: $status, motivation: $motivation, photo: $photo, bank: $bank, accountNumber: $accountNumber, headmaster: $headmaster, point: $point, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailVerifiedAt, emailVerifiedAt) ||
                other.emailVerifiedAt == emailVerifiedAt) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dateBirth, dateBirth) ||
                other.dateBirth == dateBirth) &&
            (identical(other.nationalStudentId, nationalStudentId) ||
                other.nationalStudentId == nationalStudentId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.motivation, motivation) ||
                other.motivation == motivation) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.bank, bank) || other.bank == bank) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.headmaster, headmaster) ||
                other.headmaster == headmaster) &&
            (identical(other.point, point) || other.point == point) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      email,
      emailVerifiedAt,
      phoneNumber,
      address,
      gender,
      dateBirth,
      nationalStudentId,
      status,
      motivation,
      photo,
      bank,
      accountNumber,
      headmaster,
      point,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentDetailImplCopyWith<_$StudentDetailImpl> get copyWith =>
      __$$StudentDetailImplCopyWithImpl<_$StudentDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentDetailImplToJson(
      this,
    );
  }
}

abstract class _StudentDetail implements StudentDetail {
  factory _StudentDetail(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'email') final String? email,
          @JsonKey(name: 'email_verified_at') final DateTime? emailVerifiedAt,
          @JsonKey(name: 'phone_number') final String? phoneNumber,
          @JsonKey(name: 'address') final String? address,
          @JsonKey(name: 'gender') final String? gender,
          @JsonKey(name: 'date_birth') final DateTime? dateBirth,
          @JsonKey(name: 'national_student_id') final String? nationalStudentId,
          @JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'motivation') final String? motivation,
          @JsonKey(name: 'photo') final String? photo,
          @JsonKey(name: 'bank') final String? bank,
          @JsonKey(name: 'account_number') final String? accountNumber,
          @JsonKey(name: 'headmaster') final int? headmaster,
          @JsonKey(name: 'point') final int? point,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$StudentDetailImpl;

  factory _StudentDetail.fromJson(Map<String, dynamic> json) =
      _$StudentDetailImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'email_verified_at')
  DateTime? get emailVerifiedAt;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'gender')
  String? get gender;
  @override
  @JsonKey(name: 'date_birth')
  DateTime? get dateBirth;
  @override
  @JsonKey(name: 'national_student_id')
  String? get nationalStudentId;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'motivation')
  String? get motivation;
  @override
  @JsonKey(name: 'photo')
  String? get photo;
  @override
  @JsonKey(name: 'bank')
  String? get bank;
  @override
  @JsonKey(name: 'account_number')
  String? get accountNumber;
  @override
  @JsonKey(name: 'headmaster')
  int? get headmaster;
  @override
  @JsonKey(name: 'point')
  int? get point;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$StudentDetailImplCopyWith<_$StudentDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StudentClassroom _$StudentClassroomFromJson(Map<String, dynamic> json) {
  return _StudentClassroom.fromJson(json);
}

/// @nodoc
mixin _$StudentClassroom {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_school_id')
  int? get studentchoolId => throw _privateConstructorUsedError;
  @JsonKey(name: 'classroom_id')
  String? get classroomId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentClassroomCopyWith<StudentClassroom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentClassroomCopyWith<$Res> {
  factory $StudentClassroomCopyWith(
          StudentClassroom value, $Res Function(StudentClassroom) then) =
      _$StudentClassroomCopyWithImpl<$Res, StudentClassroom>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'student_school_id') int? studentchoolId,
      @JsonKey(name: 'classroom_id') String? classroomId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$StudentClassroomCopyWithImpl<$Res, $Val extends StudentClassroom>
    implements $StudentClassroomCopyWith<$Res> {
  _$StudentClassroomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? studentchoolId = freezed,
    Object? classroomId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      studentchoolId: freezed == studentchoolId
          ? _value.studentchoolId
          : studentchoolId // ignore: cast_nullable_to_non_nullable
              as int?,
      classroomId: freezed == classroomId
          ? _value.classroomId
          : classroomId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentClassroomImplCopyWith<$Res>
    implements $StudentClassroomCopyWith<$Res> {
  factory _$$StudentClassroomImplCopyWith(_$StudentClassroomImpl value,
          $Res Function(_$StudentClassroomImpl) then) =
      __$$StudentClassroomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'student_school_id') int? studentchoolId,
      @JsonKey(name: 'classroom_id') String? classroomId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$StudentClassroomImplCopyWithImpl<$Res>
    extends _$StudentClassroomCopyWithImpl<$Res, _$StudentClassroomImpl>
    implements _$$StudentClassroomImplCopyWith<$Res> {
  __$$StudentClassroomImplCopyWithImpl(_$StudentClassroomImpl _value,
      $Res Function(_$StudentClassroomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? studentchoolId = freezed,
    Object? classroomId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$StudentClassroomImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      studentchoolId: freezed == studentchoolId
          ? _value.studentchoolId
          : studentchoolId // ignore: cast_nullable_to_non_nullable
              as int?,
      classroomId: freezed == classroomId
          ? _value.classroomId
          : classroomId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentClassroomImpl implements _StudentClassroom {
  _$StudentClassroomImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'student_school_id') this.studentchoolId,
      @JsonKey(name: 'classroom_id') this.classroomId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$StudentClassroomImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentClassroomImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'student_school_id')
  final int? studentchoolId;
  @override
  @JsonKey(name: 'classroom_id')
  final String? classroomId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'StudentClassroom(id: $id, studentchoolId: $studentchoolId, classroomId: $classroomId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentClassroomImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.studentchoolId, studentchoolId) ||
                other.studentchoolId == studentchoolId) &&
            (identical(other.classroomId, classroomId) ||
                other.classroomId == classroomId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, studentchoolId, classroomId, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentClassroomImplCopyWith<_$StudentClassroomImpl> get copyWith =>
      __$$StudentClassroomImplCopyWithImpl<_$StudentClassroomImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentClassroomImplToJson(
      this,
    );
  }
}

abstract class _StudentClassroom implements StudentClassroom {
  factory _StudentClassroom(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'student_school_id') final int? studentchoolId,
          @JsonKey(name: 'classroom_id') final String? classroomId,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$StudentClassroomImpl;

  factory _StudentClassroom.fromJson(Map<String, dynamic> json) =
      _$StudentClassroomImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'student_school_id')
  int? get studentchoolId;
  @override
  @JsonKey(name: 'classroom_id')
  String? get classroomId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$StudentClassroomImplCopyWith<_$StudentClassroomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
