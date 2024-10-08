import 'package:either_dart/either.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/datasources/api_service.dart';
import '../../data/repositories/journal_repository_impl.dart';
import '../entities/failure/failure.dart';
import '../entities/journal.dart';
import '../entities/requests/add_journal_request.dart';
import '../entities/requests/update_journal_request.dart';

part 'journal_repository.g.dart';

abstract class JournalRepository {
  Future<Either<Failure, List<Journal>>> getAllJournals();
  Future<Either<Failure, Journal>> getJournal(String id);
  Future<Either<Failure, void>> addJournal(AddJournalRequest journal);
  Future<Either<Failure, void>> updateJournal(UpdateJournalRequest journal);
  Future<Either<Failure, void>> deleteJournal(Journal journal);
}

@Riverpod(keepAlive: true)
JournalRepository journalRepository(JournalRepositoryRef ref) {
  return JournalRepositoryImpl(ref.read(apiServiceProvider));
}
