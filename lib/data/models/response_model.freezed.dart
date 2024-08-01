// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseModel<T> _$ResponseModelFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _ResponseModel<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ResponseModel<T> {
  @JsonKey(name: 'data')
  T? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'token')
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'error')
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseModelCopyWith<T, ResponseModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseModelCopyWith<T, $Res> {
  factory $ResponseModelCopyWith(
          ResponseModel<T> value, $Res Function(ResponseModel<T>) then) =
      _$ResponseModelCopyWithImpl<T, $Res, ResponseModel<T>>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') T? data,
      @JsonKey(name: 'token') String? token,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'error') String? error});
}

/// @nodoc
class _$ResponseModelCopyWithImpl<T, $Res, $Val extends ResponseModel<T>>
    implements $ResponseModelCopyWith<T, $Res> {
  _$ResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? token = freezed,
    Object? message = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseModelImplCopyWith<T, $Res>
    implements $ResponseModelCopyWith<T, $Res> {
  factory _$$ResponseModelImplCopyWith(_$ResponseModelImpl<T> value,
          $Res Function(_$ResponseModelImpl<T>) then) =
      __$$ResponseModelImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') T? data,
      @JsonKey(name: 'token') String? token,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'error') String? error});
}

/// @nodoc
class __$$ResponseModelImplCopyWithImpl<T, $Res>
    extends _$ResponseModelCopyWithImpl<T, $Res, _$ResponseModelImpl<T>>
    implements _$$ResponseModelImplCopyWith<T, $Res> {
  __$$ResponseModelImplCopyWithImpl(_$ResponseModelImpl<T> _value,
      $Res Function(_$ResponseModelImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? token = freezed,
    Object? message = freezed,
    Object? error = freezed,
  }) {
    return _then(_$ResponseModelImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ResponseModelImpl<T> implements _ResponseModel<T> {
  _$ResponseModelImpl(
      {@JsonKey(name: 'data') this.data,
      @JsonKey(name: 'token') this.token,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'error') this.error});

  factory _$ResponseModelImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ResponseModelImplFromJson(json, fromJsonT);

  @override
  @JsonKey(name: 'data')
  final T? data;
  @override
  @JsonKey(name: 'token')
  final String? token;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'error')
  final String? error;

  @override
  String toString() {
    return 'ResponseModel<$T>(data: $data, token: $token, message: $message, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseModelImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(data), token, message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseModelImplCopyWith<T, _$ResponseModelImpl<T>> get copyWith =>
      __$$ResponseModelImplCopyWithImpl<T, _$ResponseModelImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ResponseModelImplToJson<T>(this, toJsonT);
  }
}

abstract class _ResponseModel<T> implements ResponseModel<T> {
  factory _ResponseModel(
      {@JsonKey(name: 'data') final T? data,
      @JsonKey(name: 'token') final String? token,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'error') final String? error}) = _$ResponseModelImpl<T>;

  factory _ResponseModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ResponseModelImpl<T>.fromJson;

  @override
  @JsonKey(name: 'data')
  T? get data;
  @override
  @JsonKey(name: 'token')
  String? get token;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'error')
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$ResponseModelImplCopyWith<T, _$ResponseModelImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
