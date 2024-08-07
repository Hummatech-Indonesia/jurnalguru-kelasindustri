// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'journal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Journal _$JournalFromJson(Map<String, dynamic> json) {
  return _Journal.fromJson(json);
}

/// @nodoc
mixin _$Journal {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo')
  String? get photo => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  DateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'classroom_id')
  String? get classroomId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  String? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'permits')
  @JsonStringToInt()
  int? get permits => throw _privateConstructorUsedError;
  @JsonKey(name: 'sicks')
  @JsonStringToInt()
  int? get sicks => throw _privateConstructorUsedError;
  @JsonKey(name: 'absents')
  @JsonStringToInt()
  int? get absents => throw _privateConstructorUsedError;
  @JsonKey(name: 'classroom')
  Classroom? get classroom => throw _privateConstructorUsedError;
  @JsonKey(name: 'attendance_alfa')
  List<JournalAttendance>? get absentsAttendance =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'attendance_ijin')
  List<JournalAttendance>? get permitsAttendance =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'attendance_sakit')
  List<JournalAttendance>? get sicksAttendance =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JournalCopyWith<Journal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JournalCopyWith<$Res> {
  factory $JournalCopyWith(Journal value, $Res Function(Journal) then) =
      _$JournalCopyWithImpl<$Res, Journal>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'photo') String? photo,
      @JsonKey(name: 'date') DateTime? date,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'classroom_id') String? classroomId,
      @JsonKey(name: 'created_by') String? createdBy,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'permits') @JsonStringToInt() int? permits,
      @JsonKey(name: 'sicks') @JsonStringToInt() int? sicks,
      @JsonKey(name: 'absents') @JsonStringToInt() int? absents,
      @JsonKey(name: 'classroom') Classroom? classroom,
      @JsonKey(name: 'attendance_alfa')
      List<JournalAttendance>? absentsAttendance,
      @JsonKey(name: 'attendance_ijin')
      List<JournalAttendance>? permitsAttendance,
      @JsonKey(name: 'attendance_sakit')
      List<JournalAttendance>? sicksAttendance});

  $ClassroomCopyWith<$Res>? get classroom;
}

/// @nodoc
class _$JournalCopyWithImpl<$Res, $Val extends Journal>
    implements $JournalCopyWith<$Res> {
  _$JournalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? photo = freezed,
    Object? date = freezed,
    Object? description = freezed,
    Object? classroomId = freezed,
    Object? createdBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? permits = freezed,
    Object? sicks = freezed,
    Object? absents = freezed,
    Object? classroom = freezed,
    Object? absentsAttendance = freezed,
    Object? permitsAttendance = freezed,
    Object? sicksAttendance = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      classroomId: freezed == classroomId
          ? _value.classroomId
          : classroomId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      permits: freezed == permits
          ? _value.permits
          : permits // ignore: cast_nullable_to_non_nullable
              as int?,
      sicks: freezed == sicks
          ? _value.sicks
          : sicks // ignore: cast_nullable_to_non_nullable
              as int?,
      absents: freezed == absents
          ? _value.absents
          : absents // ignore: cast_nullable_to_non_nullable
              as int?,
      classroom: freezed == classroom
          ? _value.classroom
          : classroom // ignore: cast_nullable_to_non_nullable
              as Classroom?,
      absentsAttendance: freezed == absentsAttendance
          ? _value.absentsAttendance
          : absentsAttendance // ignore: cast_nullable_to_non_nullable
              as List<JournalAttendance>?,
      permitsAttendance: freezed == permitsAttendance
          ? _value.permitsAttendance
          : permitsAttendance // ignore: cast_nullable_to_non_nullable
              as List<JournalAttendance>?,
      sicksAttendance: freezed == sicksAttendance
          ? _value.sicksAttendance
          : sicksAttendance // ignore: cast_nullable_to_non_nullable
              as List<JournalAttendance>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClassroomCopyWith<$Res>? get classroom {
    if (_value.classroom == null) {
      return null;
    }

    return $ClassroomCopyWith<$Res>(_value.classroom!, (value) {
      return _then(_value.copyWith(classroom: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JournalImplCopyWith<$Res> implements $JournalCopyWith<$Res> {
  factory _$$JournalImplCopyWith(
          _$JournalImpl value, $Res Function(_$JournalImpl) then) =
      __$$JournalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'photo') String? photo,
      @JsonKey(name: 'date') DateTime? date,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'classroom_id') String? classroomId,
      @JsonKey(name: 'created_by') String? createdBy,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'permits') @JsonStringToInt() int? permits,
      @JsonKey(name: 'sicks') @JsonStringToInt() int? sicks,
      @JsonKey(name: 'absents') @JsonStringToInt() int? absents,
      @JsonKey(name: 'classroom') Classroom? classroom,
      @JsonKey(name: 'attendance_alfa')
      List<JournalAttendance>? absentsAttendance,
      @JsonKey(name: 'attendance_ijin')
      List<JournalAttendance>? permitsAttendance,
      @JsonKey(name: 'attendance_sakit')
      List<JournalAttendance>? sicksAttendance});

  @override
  $ClassroomCopyWith<$Res>? get classroom;
}

/// @nodoc
class __$$JournalImplCopyWithImpl<$Res>
    extends _$JournalCopyWithImpl<$Res, _$JournalImpl>
    implements _$$JournalImplCopyWith<$Res> {
  __$$JournalImplCopyWithImpl(
      _$JournalImpl _value, $Res Function(_$JournalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? photo = freezed,
    Object? date = freezed,
    Object? description = freezed,
    Object? classroomId = freezed,
    Object? createdBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? permits = freezed,
    Object? sicks = freezed,
    Object? absents = freezed,
    Object? classroom = freezed,
    Object? absentsAttendance = freezed,
    Object? permitsAttendance = freezed,
    Object? sicksAttendance = freezed,
  }) {
    return _then(_$JournalImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      classroomId: freezed == classroomId
          ? _value.classroomId
          : classroomId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      permits: freezed == permits
          ? _value.permits
          : permits // ignore: cast_nullable_to_non_nullable
              as int?,
      sicks: freezed == sicks
          ? _value.sicks
          : sicks // ignore: cast_nullable_to_non_nullable
              as int?,
      absents: freezed == absents
          ? _value.absents
          : absents // ignore: cast_nullable_to_non_nullable
              as int?,
      classroom: freezed == classroom
          ? _value.classroom
          : classroom // ignore: cast_nullable_to_non_nullable
              as Classroom?,
      absentsAttendance: freezed == absentsAttendance
          ? _value._absentsAttendance
          : absentsAttendance // ignore: cast_nullable_to_non_nullable
              as List<JournalAttendance>?,
      permitsAttendance: freezed == permitsAttendance
          ? _value._permitsAttendance
          : permitsAttendance // ignore: cast_nullable_to_non_nullable
              as List<JournalAttendance>?,
      sicksAttendance: freezed == sicksAttendance
          ? _value._sicksAttendance
          : sicksAttendance // ignore: cast_nullable_to_non_nullable
              as List<JournalAttendance>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JournalImpl implements _Journal {
  _$JournalImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'photo') this.photo,
      @JsonKey(name: 'date') this.date,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'classroom_id') this.classroomId,
      @JsonKey(name: 'created_by') this.createdBy,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'permits') @JsonStringToInt() this.permits,
      @JsonKey(name: 'sicks') @JsonStringToInt() this.sicks,
      @JsonKey(name: 'absents') @JsonStringToInt() this.absents,
      @JsonKey(name: 'classroom') this.classroom,
      @JsonKey(name: 'attendance_alfa')
      final List<JournalAttendance>? absentsAttendance,
      @JsonKey(name: 'attendance_ijin')
      final List<JournalAttendance>? permitsAttendance,
      @JsonKey(name: 'attendance_sakit')
      final List<JournalAttendance>? sicksAttendance})
      : _absentsAttendance = absentsAttendance,
        _permitsAttendance = permitsAttendance,
        _sicksAttendance = sicksAttendance;

  factory _$JournalImpl.fromJson(Map<String, dynamic> json) =>
      _$$JournalImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'photo')
  final String? photo;
  @override
  @JsonKey(name: 'date')
  final DateTime? date;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'classroom_id')
  final String? classroomId;
  @override
  @JsonKey(name: 'created_by')
  final String? createdBy;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'permits')
  @JsonStringToInt()
  final int? permits;
  @override
  @JsonKey(name: 'sicks')
  @JsonStringToInt()
  final int? sicks;
  @override
  @JsonKey(name: 'absents')
  @JsonStringToInt()
  final int? absents;
  @override
  @JsonKey(name: 'classroom')
  final Classroom? classroom;
  final List<JournalAttendance>? _absentsAttendance;
  @override
  @JsonKey(name: 'attendance_alfa')
  List<JournalAttendance>? get absentsAttendance {
    final value = _absentsAttendance;
    if (value == null) return null;
    if (_absentsAttendance is EqualUnmodifiableListView)
      return _absentsAttendance;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<JournalAttendance>? _permitsAttendance;
  @override
  @JsonKey(name: 'attendance_ijin')
  List<JournalAttendance>? get permitsAttendance {
    final value = _permitsAttendance;
    if (value == null) return null;
    if (_permitsAttendance is EqualUnmodifiableListView)
      return _permitsAttendance;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<JournalAttendance>? _sicksAttendance;
  @override
  @JsonKey(name: 'attendance_sakit')
  List<JournalAttendance>? get sicksAttendance {
    final value = _sicksAttendance;
    if (value == null) return null;
    if (_sicksAttendance is EqualUnmodifiableListView) return _sicksAttendance;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Journal(id: $id, title: $title, photo: $photo, date: $date, description: $description, classroomId: $classroomId, createdBy: $createdBy, createdAt: $createdAt, updatedAt: $updatedAt, permits: $permits, sicks: $sicks, absents: $absents, classroom: $classroom, absentsAttendance: $absentsAttendance, permitsAttendance: $permitsAttendance, sicksAttendance: $sicksAttendance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JournalImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.classroomId, classroomId) ||
                other.classroomId == classroomId) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.permits, permits) || other.permits == permits) &&
            (identical(other.sicks, sicks) || other.sicks == sicks) &&
            (identical(other.absents, absents) || other.absents == absents) &&
            (identical(other.classroom, classroom) ||
                other.classroom == classroom) &&
            const DeepCollectionEquality()
                .equals(other._absentsAttendance, _absentsAttendance) &&
            const DeepCollectionEquality()
                .equals(other._permitsAttendance, _permitsAttendance) &&
            const DeepCollectionEquality()
                .equals(other._sicksAttendance, _sicksAttendance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      photo,
      date,
      description,
      classroomId,
      createdBy,
      createdAt,
      updatedAt,
      permits,
      sicks,
      absents,
      classroom,
      const DeepCollectionEquality().hash(_absentsAttendance),
      const DeepCollectionEquality().hash(_permitsAttendance),
      const DeepCollectionEquality().hash(_sicksAttendance));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JournalImplCopyWith<_$JournalImpl> get copyWith =>
      __$$JournalImplCopyWithImpl<_$JournalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JournalImplToJson(
      this,
    );
  }
}

abstract class _Journal implements Journal {
  factory _Journal(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'photo') final String? photo,
      @JsonKey(name: 'date') final DateTime? date,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'classroom_id') final String? classroomId,
      @JsonKey(name: 'created_by') final String? createdBy,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'permits') @JsonStringToInt() final int? permits,
      @JsonKey(name: 'sicks') @JsonStringToInt() final int? sicks,
      @JsonKey(name: 'absents') @JsonStringToInt() final int? absents,
      @JsonKey(name: 'classroom') final Classroom? classroom,
      @JsonKey(name: 'attendance_alfa')
      final List<JournalAttendance>? absentsAttendance,
      @JsonKey(name: 'attendance_ijin')
      final List<JournalAttendance>? permitsAttendance,
      @JsonKey(name: 'attendance_sakit')
      final List<JournalAttendance>? sicksAttendance}) = _$JournalImpl;

  factory _Journal.fromJson(Map<String, dynamic> json) = _$JournalImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'photo')
  String? get photo;
  @override
  @JsonKey(name: 'date')
  DateTime? get date;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'classroom_id')
  String? get classroomId;
  @override
  @JsonKey(name: 'created_by')
  String? get createdBy;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'permits')
  @JsonStringToInt()
  int? get permits;
  @override
  @JsonKey(name: 'sicks')
  @JsonStringToInt()
  int? get sicks;
  @override
  @JsonKey(name: 'absents')
  @JsonStringToInt()
  int? get absents;
  @override
  @JsonKey(name: 'classroom')
  Classroom? get classroom;
  @override
  @JsonKey(name: 'attendance_alfa')
  List<JournalAttendance>? get absentsAttendance;
  @override
  @JsonKey(name: 'attendance_ijin')
  List<JournalAttendance>? get permitsAttendance;
  @override
  @JsonKey(name: 'attendance_sakit')
  List<JournalAttendance>? get sicksAttendance;
  @override
  @JsonKey(ignore: true)
  _$$JournalImplCopyWith<_$JournalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JournalAttendance _$JournalAttendanceFromJson(Map<String, dynamic> json) {
  return _JournalAttendance.fromJson(json);
}

/// @nodoc
mixin _$JournalAttendance {
  @JsonKey(name: 'id')
  @JsonStringToInt()
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'journal_id')
  String? get journalId => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_classroom_id')
  @JsonStringToInt()
  int? get studentClassroomId => throw _privateConstructorUsedError;
  @JsonKey(name: 'attendance')
  AttendanceType? get attendance => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JournalAttendanceCopyWith<JournalAttendance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JournalAttendanceCopyWith<$Res> {
  factory $JournalAttendanceCopyWith(
          JournalAttendance value, $Res Function(JournalAttendance) then) =
      _$JournalAttendanceCopyWithImpl<$Res, JournalAttendance>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @JsonStringToInt() int? id,
      @JsonKey(name: 'journal_id') String? journalId,
      @JsonKey(name: 'student_classroom_id')
      @JsonStringToInt()
      int? studentClassroomId,
      @JsonKey(name: 'attendance') AttendanceType? attendance,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$JournalAttendanceCopyWithImpl<$Res, $Val extends JournalAttendance>
    implements $JournalAttendanceCopyWith<$Res> {
  _$JournalAttendanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? journalId = freezed,
    Object? studentClassroomId = freezed,
    Object? attendance = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      journalId: freezed == journalId
          ? _value.journalId
          : journalId // ignore: cast_nullable_to_non_nullable
              as String?,
      studentClassroomId: freezed == studentClassroomId
          ? _value.studentClassroomId
          : studentClassroomId // ignore: cast_nullable_to_non_nullable
              as int?,
      attendance: freezed == attendance
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as AttendanceType?,
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
abstract class _$$JournalAttendanceImplCopyWith<$Res>
    implements $JournalAttendanceCopyWith<$Res> {
  factory _$$JournalAttendanceImplCopyWith(_$JournalAttendanceImpl value,
          $Res Function(_$JournalAttendanceImpl) then) =
      __$$JournalAttendanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @JsonStringToInt() int? id,
      @JsonKey(name: 'journal_id') String? journalId,
      @JsonKey(name: 'student_classroom_id')
      @JsonStringToInt()
      int? studentClassroomId,
      @JsonKey(name: 'attendance') AttendanceType? attendance,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$JournalAttendanceImplCopyWithImpl<$Res>
    extends _$JournalAttendanceCopyWithImpl<$Res, _$JournalAttendanceImpl>
    implements _$$JournalAttendanceImplCopyWith<$Res> {
  __$$JournalAttendanceImplCopyWithImpl(_$JournalAttendanceImpl _value,
      $Res Function(_$JournalAttendanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? journalId = freezed,
    Object? studentClassroomId = freezed,
    Object? attendance = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$JournalAttendanceImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      journalId: freezed == journalId
          ? _value.journalId
          : journalId // ignore: cast_nullable_to_non_nullable
              as String?,
      studentClassroomId: freezed == studentClassroomId
          ? _value.studentClassroomId
          : studentClassroomId // ignore: cast_nullable_to_non_nullable
              as int?,
      attendance: freezed == attendance
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as AttendanceType?,
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
class _$JournalAttendanceImpl implements _JournalAttendance {
  _$JournalAttendanceImpl(
      {@JsonKey(name: 'id') @JsonStringToInt() this.id,
      @JsonKey(name: 'journal_id') this.journalId,
      @JsonKey(name: 'student_classroom_id')
      @JsonStringToInt()
      this.studentClassroomId,
      @JsonKey(name: 'attendance') this.attendance,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$JournalAttendanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$JournalAttendanceImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  @JsonStringToInt()
  final int? id;
  @override
  @JsonKey(name: 'journal_id')
  final String? journalId;
  @override
  @JsonKey(name: 'student_classroom_id')
  @JsonStringToInt()
  final int? studentClassroomId;
  @override
  @JsonKey(name: 'attendance')
  final AttendanceType? attendance;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'JournalAttendance(id: $id, journalId: $journalId, studentClassroomId: $studentClassroomId, attendance: $attendance, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JournalAttendanceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.journalId, journalId) ||
                other.journalId == journalId) &&
            (identical(other.studentClassroomId, studentClassroomId) ||
                other.studentClassroomId == studentClassroomId) &&
            (identical(other.attendance, attendance) ||
                other.attendance == attendance) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, journalId,
      studentClassroomId, attendance, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JournalAttendanceImplCopyWith<_$JournalAttendanceImpl> get copyWith =>
      __$$JournalAttendanceImplCopyWithImpl<_$JournalAttendanceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JournalAttendanceImplToJson(
      this,
    );
  }
}

abstract class _JournalAttendance implements JournalAttendance {
  factory _JournalAttendance(
          {@JsonKey(name: 'id') @JsonStringToInt() final int? id,
          @JsonKey(name: 'journal_id') final String? journalId,
          @JsonKey(name: 'student_classroom_id')
          @JsonStringToInt()
          final int? studentClassroomId,
          @JsonKey(name: 'attendance') final AttendanceType? attendance,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$JournalAttendanceImpl;

  factory _JournalAttendance.fromJson(Map<String, dynamic> json) =
      _$JournalAttendanceImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  @JsonStringToInt()
  int? get id;
  @override
  @JsonKey(name: 'journal_id')
  String? get journalId;
  @override
  @JsonKey(name: 'student_classroom_id')
  @JsonStringToInt()
  int? get studentClassroomId;
  @override
  @JsonKey(name: 'attendance')
  AttendanceType? get attendance;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$JournalAttendanceImplCopyWith<_$JournalAttendanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
