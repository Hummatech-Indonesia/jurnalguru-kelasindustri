import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/entities/failure/failure.dart';
import '../../../domain/entities/journal.dart';
import '../../../domain/repositories/journal_repository.dart';

part 'journal_provider.g.dart';

@Riverpod(keepAlive: true)
Future<Journal> journal(JournalRef ref, String? id) async {
  final repository = ref.watch(journalRepositoryProvider);

  if (id == null) {
    return throw Failure("Invalid journal id");
  }

  final result = await repository.getJournal(id);

  return result.fold(
    (failure) => Future.error(failure),
    (success) => success,
  );
}
