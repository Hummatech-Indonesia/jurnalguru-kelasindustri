import 'package:either_dart/either.dart';

import '../../domain/entities/failure/failure.dart';
import '../../domain/entities/journal.dart';
import '../../domain/repositories/journal_repository.dart';
import '../datasources/api_service.dart';

class JournalRepositoryImpl implements JournalRepository {
  final ApiService _api;

  JournalRepositoryImpl(this._api);

  @override
  Future<Either<Failure, List<Journal>>> getAllJournals() async {
    final result = await _api.get<List<Journal>>(
      '/journals',
      Journal.fromJsonList,
    );

    return result.fold(
      (failure) => Left(failure),
      (success) => Right(success.data!),
    );
  }

  @override
  Future<Either<Failure, void>> addJournal(Journal journal) {
    // TODO: implement addJournal
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> deleteJournal(Journal journal) async {
    final result = await _api.delete<void>(
      '/journals/${journal.id}',
      (_) {},
    );

    return result.fold(
      (failure) => Left(failure),
      (_) => const Right(null),
    );
  }

  @override
  Future<Either<Failure, void>> updateJournal(Journal journal) {
    // TODO: implement updateJournal
    throw UnimplementedError();
  }
}
