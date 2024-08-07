// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'classroom.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Classroom _$ClassroomFromJson(Map<String, dynamic> json) {
  return _Classroom.fromJson(json);
}

/// @nodoc
mixin _$Classroom {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'generation_id')
  @JsonStringToInt()
  int? get generationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'school_id')
  String? get schoolId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'devision_id')
  String? get devisionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'students')
  @JsonStringToInt()
  int? get students => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassroomCopyWith<Classroom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassroomCopyWith<$Res> {
  factory $ClassroomCopyWith(Classroom value, $Res Function(Classroom) then) =
      _$ClassroomCopyWithImpl<$Res, Classroom>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'generation_id') @JsonStringToInt() int? generationId,
      @JsonKey(name: 'school_id') String? schoolId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'devision_id') String? devisionId,
      @JsonKey(name: 'students') @JsonStringToInt() int? students});
}

/// @nodoc
class _$ClassroomCopyWithImpl<$Res, $Val extends Classroom>
    implements $ClassroomCopyWith<$Res> {
  _$ClassroomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? generationId = freezed,
    Object? schoolId = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? devisionId = freezed,
    Object? students = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      generationId: freezed == generationId
          ? _value.generationId
          : generationId // ignore: cast_nullable_to_non_nullable
              as int?,
      schoolId: freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      devisionId: freezed == devisionId
          ? _value.devisionId
          : devisionId // ignore: cast_nullable_to_non_nullable
              as String?,
      students: freezed == students
          ? _value.students
          : students // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassroomImplCopyWith<$Res>
    implements $ClassroomCopyWith<$Res> {
  factory _$$ClassroomImplCopyWith(
          _$ClassroomImpl value, $Res Function(_$ClassroomImpl) then) =
      __$$ClassroomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'generation_id') @JsonStringToInt() int? generationId,
      @JsonKey(name: 'school_id') String? schoolId,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'devision_id') String? devisionId,
      @JsonKey(name: 'students') @JsonStringToInt() int? students});
}

/// @nodoc
class __$$ClassroomImplCopyWithImpl<$Res>
    extends _$ClassroomCopyWithImpl<$Res, _$ClassroomImpl>
    implements _$$ClassroomImplCopyWith<$Res> {
  __$$ClassroomImplCopyWithImpl(
      _$ClassroomImpl _value, $Res Function(_$ClassroomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? generationId = freezed,
    Object? schoolId = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? devisionId = freezed,
    Object? students = freezed,
  }) {
    return _then(_$ClassroomImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      generationId: freezed == generationId
          ? _value.generationId
          : generationId // ignore: cast_nullable_to_non_nullable
              as int?,
      schoolId: freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      devisionId: freezed == devisionId
          ? _value.devisionId
          : devisionId // ignore: cast_nullable_to_non_nullable
              as String?,
      students: freezed == students
          ? _value.students
          : students // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassroomImpl implements _Classroom {
  _$ClassroomImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'generation_id') @JsonStringToInt() this.generationId,
      @JsonKey(name: 'school_id') this.schoolId,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'devision_id') this.devisionId,
      @JsonKey(name: 'students') @JsonStringToInt() this.students});

  factory _$ClassroomImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassroomImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'generation_id')
  @JsonStringToInt()
  final int? generationId;
  @override
  @JsonKey(name: 'school_id')
  final String? schoolId;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'devision_id')
  final String? devisionId;
  @override
  @JsonKey(name: 'students')
  @JsonStringToInt()
  final int? students;

  @override
  String toString() {
    return 'Classroom(id: $id, generationId: $generationId, schoolId: $schoolId, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, devisionId: $devisionId, students: $students)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassroomImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.generationId, generationId) ||
                other.generationId == generationId) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.devisionId, devisionId) ||
                other.devisionId == devisionId) &&
            (identical(other.students, students) ||
                other.students == students));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, generationId, schoolId, name,
      createdAt, updatedAt, devisionId, students);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassroomImplCopyWith<_$ClassroomImpl> get copyWith =>
      __$$ClassroomImplCopyWithImpl<_$ClassroomImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassroomImplToJson(
      this,
    );
  }
}

abstract class _Classroom implements Classroom {
  factory _Classroom(
          {@JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'generation_id')
          @JsonStringToInt()
          final int? generationId,
          @JsonKey(name: 'school_id') final String? schoolId,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt,
          @JsonKey(name: 'devision_id') final String? devisionId,
          @JsonKey(name: 'students') @JsonStringToInt() final int? students}) =
      _$ClassroomImpl;

  factory _Classroom.fromJson(Map<String, dynamic> json) =
      _$ClassroomImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'generation_id')
  @JsonStringToInt()
  int? get generationId;
  @override
  @JsonKey(name: 'school_id')
  String? get schoolId;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'devision_id')
  String? get devisionId;
  @override
  @JsonKey(name: 'students')
  @JsonStringToInt()
  int? get students;
  @override
  @JsonKey(ignore: true)
  _$$ClassroomImplCopyWith<_$ClassroomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
