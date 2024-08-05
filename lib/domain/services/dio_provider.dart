import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../constants/api_config.dart';
import 'alice_provider.dart';
import 'shared_preferences_provider.dart';

part 'dio_provider.g.dart';

@riverpod
Dio dio(DioRef ref) {
  final alice = ref.watch(aliceProvider);

  final dio = Dio(
    BaseOptions(
      baseUrl: ApiConfig.apiUrl,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
    ),
  );

  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) async {
      final sharedPreference = await ref.read(sharedPreferencesProvider.future);
      final token = sharedPreference.getString('token');

      if (token != null) {
        options.headers['Authorization'] = 'Bearer $token';
      }

      return handler.next(options);
    },
  ));

  dio.interceptors.add(alice.getDioInterceptor());

  return dio;
}
