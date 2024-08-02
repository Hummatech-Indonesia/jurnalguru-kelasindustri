import 'package:either_dart/either.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/datasources/api_service.dart';
import '../../data/repositories/journal_repository.dart';
import '../entities/failure/failure.dart';
import '../entities/journal.dart';

part 'journal_repository.g.dart';

abstract class JournalRepository {
  Future<Either<Failure, List<Journal>>> getAllJournals();
  Future<Either<Failure, void>> addJournal(Journal journal);
  Future<Either<Failure, void>> updateJournal(Journal journal);
  Future<Either<Failure, void>> deleteJournal(Journal journal);
}

@riverpod
JournalRepository journalRepository(JournalRepositoryRef ref) {
  return JournalRepositoryImpl(ref.read(apiServiceProvider));
}
