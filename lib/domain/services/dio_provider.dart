import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../ui/providers/common/response_message_provider.dart';
import '../constants/api_config.dart';
import '../entities/failure/failure.dart';
import 'alice_provider.dart';
import 'shared_preferences_provider.dart';

part 'dio_provider.g.dart';

@Riverpod(keepAlive: true)
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

  dio.interceptors.add(InterceptorsWrapper(
    onResponse: (response, handler) async {
      if (response.requestOptions.method == 'POST' &&
          response.data is Map &&
          response.data['message'] != null &&
          response.data['message'] != 'Welcome to the API') {
        ref
            .read(responseMessageProvider.notifier)
            .setMessage(response.data['message']);
      }

      return handler.next(response);
    },
    onError: (error, handler) async {
      ref
          .read(responseMessageProvider.notifier)
          .setFailure(Failure.fromDioException(error));

      return handler.next(error);
    },
  ));

  ref.onDispose(() {
    dio.interceptors.clear();
  });

  return dio;
}
