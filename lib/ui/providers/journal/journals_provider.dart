import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/entities/journal.dart';
import '../../../domain/repositories/journal_repository.dart';
import '../auth/auth_notifier.dart';

part 'journals_provider.g.dart';

@riverpod
class Journals extends _$Journals {
  @override
  Future<List<Journal>> build() async {
    ref.watch(authNotifierProvider.select((state) => state.isLoggedIn));

    final result = await ref.watch(journalRepositoryProvider).getAllJournals();

    return result.fold(
      (failure) => throw failure,
      (success) => success,
    );
  }
}
