import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/entities/failure/failure.dart';

part 'response_message_provider.freezed.dart';
part 'response_message_provider.g.dart';
part 'response_message_state.dart';

@riverpod
class ResponseMessage extends _$ResponseMessage {
  @override
  ResponseMessageState build() => ResponseMessageState();

  void setMessage(String message) {
    state = state.copyWith(message: message);
  }

  void setFailure(Failure failure) {
    state = state.copyWith(failure: failure);
  }
}
