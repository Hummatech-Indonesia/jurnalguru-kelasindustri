import 'package:either_dart/either.dart';

import '../../domain/entities/failure/failure.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/api_service.dart';

class AuthRepositoryImpl implements AuthRepository {
  final ApiService _api;

  AuthRepositoryImpl(this._api);

  @override
  Future<Either<Failure, String>> signIn(String email, String password) async {
    final result = await _api.post<UserDetail>(
      '/login',
      UserDetail.fromJson,
      data: {
        'email': email,
        'password': password,
      },
    );

    return result.fold(
      (failure) => Left(failure),
      (success) => Right(success.token!),
    );
  }

  @override
  Future<Either<Failure, void>> signOut() async {
    return const Right(null);
  }
}
