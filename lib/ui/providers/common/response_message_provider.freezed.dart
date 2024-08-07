// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_message_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResponseMessageState {
  String? get message => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResponseMessageStateCopyWith<ResponseMessageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseMessageStateCopyWith<$Res> {
  factory $ResponseMessageStateCopyWith(ResponseMessageState value,
          $Res Function(ResponseMessageState) then) =
      _$ResponseMessageStateCopyWithImpl<$Res, ResponseMessageState>;
  @useResult
  $Res call({String? message, Failure? failure});
}

/// @nodoc
class _$ResponseMessageStateCopyWithImpl<$Res,
        $Val extends ResponseMessageState>
    implements $ResponseMessageStateCopyWith<$Res> {
  _$ResponseMessageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseMessageStateImplCopyWith<$Res>
    implements $ResponseMessageStateCopyWith<$Res> {
  factory _$$ResponseMessageStateImplCopyWith(_$ResponseMessageStateImpl value,
          $Res Function(_$ResponseMessageStateImpl) then) =
      __$$ResponseMessageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, Failure? failure});
}

/// @nodoc
class __$$ResponseMessageStateImplCopyWithImpl<$Res>
    extends _$ResponseMessageStateCopyWithImpl<$Res, _$ResponseMessageStateImpl>
    implements _$$ResponseMessageStateImplCopyWith<$Res> {
  __$$ResponseMessageStateImplCopyWithImpl(_$ResponseMessageStateImpl _value,
      $Res Function(_$ResponseMessageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$ResponseMessageStateImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$ResponseMessageStateImpl implements _ResponseMessageState {
  _$ResponseMessageStateImpl({this.message, this.failure});

  @override
  final String? message;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'ResponseMessageState(message: $message, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseMessageStateImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseMessageStateImplCopyWith<_$ResponseMessageStateImpl>
      get copyWith =>
          __$$ResponseMessageStateImplCopyWithImpl<_$ResponseMessageStateImpl>(
              this, _$identity);
}

abstract class _ResponseMessageState implements ResponseMessageState {
  factory _ResponseMessageState(
      {final String? message,
      final Failure? failure}) = _$ResponseMessageStateImpl;

  @override
  String? get message;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$ResponseMessageStateImplCopyWith<_$ResponseMessageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
