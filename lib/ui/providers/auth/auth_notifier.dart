import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/repositories/auth_repository.dart';
import '../../../domain/services/shared_preferences_provider.dart';
import 'auth_state.dart';

part 'auth_notifier.g.dart';

@Riverpod(keepAlive: true)
class AuthNotifier extends _$AuthNotifier {
  @override
  AuthState build() {
    return AuthState();
  }

  Future<void> checkLogin() async {
    final sharedPreference = await ref.read(sharedPreferencesProvider.future);

    final token = sharedPreference.getString('token');

    if (token != null) {
      state = state.copyWith(isLoggedIn: true);
    }
  }

  void login(String email, String password) async {
    state = state.copyWith(
      isLoading: true,
      failure: null,
    );

    final result =
        await ref.read(authRepositoryProvider).signIn(email, password);

    if (result.isRight) {
      final sharedPreference = await ref.read(sharedPreferencesProvider.future);

      sharedPreference.setString('token', result.right);
    }

    state = result.fold(
      (failure) => state.copyWith(
        isLoading: false,
        failure: failure,
      ),
      (success) => state.copyWith(
        isLoggedIn: true,
        isLoading: false,
        failure: null,
      ),
    );
  }

  Future<void> logout() async {
    state = state.copyWith(
      isLoading: true,
      failure: null,
    );

    final result = await ref.read(authRepositoryProvider).signOut();

    if (result.isRight) {
      final sharedPreference = await ref.read(sharedPreferencesProvider.future);

      sharedPreference.remove('token');
    }

    state = result.fold(
      (failure) => state.copyWith(
        isLoading: false,
        failure: failure,
      ),
      (success) => state.copyWith(
        isLoggedIn: false,
        isLoading: false,
        failure: null,
      ),
    );
  }
}
