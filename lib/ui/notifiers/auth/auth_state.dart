import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/failure/failure.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    Failure? failure,
    @Default(false) bool isLoading,
    @Default(false) bool isLoggedIn,
  }) = _AuthState;
}
