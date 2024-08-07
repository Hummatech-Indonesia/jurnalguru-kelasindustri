import 'package:either_dart/either.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/datasources/api_service.dart';
import '../../data/repositories/auth_repository_impl.dart';
import '../entities/failure/failure.dart';
import '../entities/user.dart';

part 'auth_repository.g.dart';

abstract class AuthRepository {
  Future<Either<Failure, String>> signIn(String email, String password);
  Future<Either<Failure, void>> signOut();
  Future<Either<Failure, User>> getUser();
}

@Riverpod(keepAlive: true)
AuthRepository authRepository(AuthRepositoryRef ref) {
  return AuthRepositoryImpl(ref.read(apiServiceProvider));
}
