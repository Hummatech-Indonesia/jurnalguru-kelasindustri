// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_journal_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateJournalRequest {
  String get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  File? get image => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get teacherId => throw _privateConstructorUsedError;
  Map<int, AttendanceType>? get attendancesRecord =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateJournalRequestCopyWith<UpdateJournalRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateJournalRequestCopyWith<$Res> {
  factory $UpdateJournalRequestCopyWith(UpdateJournalRequest value,
          $Res Function(UpdateJournalRequest) then) =
      _$UpdateJournalRequestCopyWithImpl<$Res, UpdateJournalRequest>;
  @useResult
  $Res call(
      {String id,
      String? title,
      File? image,
      String? description,
      String? teacherId,
      Map<int, AttendanceType>? attendancesRecord});
}

/// @nodoc
class _$UpdateJournalRequestCopyWithImpl<$Res,
        $Val extends UpdateJournalRequest>
    implements $UpdateJournalRequestCopyWith<$Res> {
  _$UpdateJournalRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? teacherId = freezed,
    Object? attendancesRecord = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      teacherId: freezed == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as String?,
      attendancesRecord: freezed == attendancesRecord
          ? _value.attendancesRecord
          : attendancesRecord // ignore: cast_nullable_to_non_nullable
              as Map<int, AttendanceType>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateJournalRequestImplCopyWith<$Res>
    implements $UpdateJournalRequestCopyWith<$Res> {
  factory _$$UpdateJournalRequestImplCopyWith(_$UpdateJournalRequestImpl value,
          $Res Function(_$UpdateJournalRequestImpl) then) =
      __$$UpdateJournalRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? title,
      File? image,
      String? description,
      String? teacherId,
      Map<int, AttendanceType>? attendancesRecord});
}

/// @nodoc
class __$$UpdateJournalRequestImplCopyWithImpl<$Res>
    extends _$UpdateJournalRequestCopyWithImpl<$Res, _$UpdateJournalRequestImpl>
    implements _$$UpdateJournalRequestImplCopyWith<$Res> {
  __$$UpdateJournalRequestImplCopyWithImpl(_$UpdateJournalRequestImpl _value,
      $Res Function(_$UpdateJournalRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? teacherId = freezed,
    Object? attendancesRecord = freezed,
  }) {
    return _then(_$UpdateJournalRequestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      teacherId: freezed == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as String?,
      attendancesRecord: freezed == attendancesRecord
          ? _value._attendancesRecord
          : attendancesRecord // ignore: cast_nullable_to_non_nullable
              as Map<int, AttendanceType>?,
    ));
  }
}

/// @nodoc

class _$UpdateJournalRequestImpl implements _UpdateJournalRequest {
  _$UpdateJournalRequestImpl(
      {required this.id,
      required this.title,
      required this.image,
      required this.description,
      required this.teacherId,
      required final Map<int, AttendanceType>? attendancesRecord})
      : _attendancesRecord = attendancesRecord;

  @override
  final String id;
  @override
  final String? title;
  @override
  final File? image;
  @override
  final String? description;
  @override
  final String? teacherId;
  final Map<int, AttendanceType>? _attendancesRecord;
  @override
  Map<int, AttendanceType>? get attendancesRecord {
    final value = _attendancesRecord;
    if (value == null) return null;
    if (_attendancesRecord is EqualUnmodifiableMapView)
      return _attendancesRecord;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'UpdateJournalRequest(id: $id, title: $title, image: $image, description: $description, teacherId: $teacherId, attendancesRecord: $attendancesRecord)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateJournalRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
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
  int get hashCode => Object.hash(runtimeType, id, title, image, description,
      teacherId, const DeepCollectionEquality().hash(_attendancesRecord));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateJournalRequestImplCopyWith<_$UpdateJournalRequestImpl>
      get copyWith =>
          __$$UpdateJournalRequestImplCopyWithImpl<_$UpdateJournalRequestImpl>(
              this, _$identity);
}

abstract class _UpdateJournalRequest implements UpdateJournalRequest {
  factory _UpdateJournalRequest(
          {required final String id,
          required final String? title,
          required final File? image,
          required final String? description,
          required final String? teacherId,
          required final Map<int, AttendanceType>? attendancesRecord}) =
      _$UpdateJournalRequestImpl;

  @override
  String get id;
  @override
  String? get title;
  @override
  File? get image;
  @override
  String? get description;
  @override
  String? get teacherId;
  @override
  Map<int, AttendanceType>? get attendancesRecord;
  @override
  @JsonKey(ignore: true)
  _$$UpdateJournalRequestImplCopyWith<_$UpdateJournalRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
