part of 'response_message_provider.dart';

@freezed
class ResponseMessageState with _$ResponseMessageState {
  factory ResponseMessageState({
    String? message,
    Failure? failure,
  }) = _ResponseMessageState;
}
