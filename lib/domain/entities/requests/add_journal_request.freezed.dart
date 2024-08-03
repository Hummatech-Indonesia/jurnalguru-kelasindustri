// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_journal_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddJournalRequest {
  String get title => throw _privateConstructorUsedError;
  File get image => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get teacherId => throw _privateConstructorUsedError;
  Map<int, AttendanceType> get attendancesRecord =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddJournalRequestCopyWith<AddJournalRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddJournalRequestCopyWith<$Res> {
  factory $AddJournalRequestCopyWith(
          AddJournalRequest value, $Res Function(AddJournalRequest) then) =
      _$AddJournalRequestCopyWithImpl<$Res, AddJournalRequest>;
  @useResult
  $Res call(
      {String title,
      File image,
      String description,
      String teacherId,
      Map<int, AttendanceType> attendancesRecord});
}

/// @nodoc
class _$AddJournalRequestCopyWithImpl<$Res, $Val extends AddJournalRequest>
    implements $AddJournalRequestCopyWith<$Res> {
  _$AddJournalRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? image = null,
    Object? description = null,
    Object? teacherId = null,
    Object? attendancesRecord = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      teacherId: null == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as String,
      attendancesRecord: null == attendancesRecord
          ? _value.attendancesRecord
          : attendancesRecord // ignore: cast_nullable_to_non_nullable
              as Map<int, AttendanceType>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddJournalRequestImplCopyWith<$Res>
    implements $AddJournalRequestCopyWith<$Res> {
  factory _$$AddJournalRequestImplCopyWith(_$AddJournalRequestImpl value,
          $Res Function(_$AddJournalRequestImpl) then) =
      __$$AddJournalRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      File image,
      String description,
      String teacherId,
      Map<int, AttendanceType> attendancesRecord});
}

/// @nodoc
class __$$AddJournalRequestImplCopyWithImpl<$Res>
    extends _$AddJournalRequestCopyWithImpl<$Res, _$AddJournalRequestImpl>
    implements _$$AddJournalRequestImplCopyWith<$Res> {
  __$$AddJournalRequestImplCopyWithImpl(_$AddJournalRequestImpl _value,
      $Res Function(_$AddJournalRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? image = null,
    Object? description = null,
    Object? teacherId = null,
    Object? attendancesRecord = null,
  }) {
    return _then(_$AddJournalRequestImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      teacherId: null == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as String,
      attendancesRecord: null == attendancesRecord
          ? _value._attendancesRecord
          : attendancesRecord // ignore: cast_nullable_to_non_nullable
              as Map<int, AttendanceType>,
    ));
  }
}

/// @nodoc

class _$AddJournalRequestImpl implements _AddJournalRequest {
  _$AddJournalRequestImpl(
      {required this.title,
      required this.image,
      required this.description,
      required this.teacherId,
      required final Map<int, AttendanceType> attendancesRecord})
      : _attendancesRecord = attendancesRecord;

  @override
  final String title;
  @override
  final File image;
  @override
  final String description;
  @override
  final String teacherId;
  final Map<int, AttendanceType> _attendancesRecord;
  @override
  Map<int, AttendanceType> get attendancesRecord {
    if (_attendancesRecord is EqualUnmodifiableMapView)
      return _attendancesRecord;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_attendancesRecord);
  }

  @override
  String toString() {
    return 'AddJournalRequest(title: $title, image: $image, description: $description, teacherId: $teacherId, attendancesRecord: $attendancesRecord)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddJournalRequestImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.teacherId, teacherId) ||
                other.teacherId == teacherId) &&
            const DeepCollectionEquality()
                .equals(other._attendancesRecord, _attendancesRecord));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, image, description,
      teacherId, const DeepCollectionEquality().hash(_attendancesRecord));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddJournalRequestImplCopyWith<_$AddJournalRequestImpl> get copyWith =>
      __$$AddJournalRequestImplCopyWithImpl<_$AddJournalRequestImpl>(
          this, _$identity);
}

abstract class _AddJournalRequest implements AddJournalRequest {
  factory _AddJournalRequest(
          {required final String title,
          required final File image,
          required final String description,
          required final String teacherId,
          required final Map<int, AttendanceType> attendancesRecord}) =
      _$AddJournalRequestImpl;

  @override
  String get title;
  @override
  File get image;
  @override
  String get description;
  @override
  String get teacherId;
  @override
  Map<int, AttendanceType> get attendancesRecord;
  @override
  @JsonKey(ignore: true)
  _$$AddJournalRequestImplCopyWith<_$AddJournalRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
