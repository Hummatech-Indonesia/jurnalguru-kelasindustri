import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';

import '../../domain/entities/failure/failure.dart';
import '../../domain/entities/journal.dart';
import '../../domain/entities/requests/add_journal_request.dart';
import '../../domain/enums/attendance_type.dart';
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
  Future<Either<Failure, void>> addJournal(AddJournalRequest journal) async {
    final formData = FormData.fromMap({
      'title': journal.title,
      'photo': await MultipartFile.fromFile(journal.image.path),
      'description': journal.description,
      'created_by': journal.teacherId,
      for (final MapEntry(:key, :value) in journal.attendancesRecord.entries)
        'attendance[$key]': value.value,
    });

    final result = await _api.post<void>(
      '/journals',
      Journal.fromJson,
      data: formData,
    );

    return result.fold(
      (failure) => Left(failure),
      (_) => const Right(null),
    );
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
