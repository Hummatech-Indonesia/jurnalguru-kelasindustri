import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_model.freezed.dart';
part 'response_model.g.dart';

@Freezed(genericArgumentFactories: true)
class ResponseModel<T> with _$ResponseModel<T> {
  factory ResponseModel({
    @JsonKey(name: 'data') T? data,
    @JsonKey(name: 'token') String? token,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'error') String? error,
  }) = _ResponseModel<T>;

  factory ResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$ResponseModelFromJson(json, fromJsonT);
}
