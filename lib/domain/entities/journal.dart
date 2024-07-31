import 'package:freezed_annotation/freezed_annotation.dart';

import 'classroom.dart';

part 'journal.freezed.dart';
part 'journal.g.dart';

@freezed
class Journal with _$Journal {
  factory Journal({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'photo') String? photo,
    @JsonKey(name: 'date') DateTime? date,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'classroom_id') String? classroomId,
    @JsonKey(name: 'created_by') String? createdBy,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'permits') int? permits,
    @JsonKey(name: 'sicks') int? sicks,
    @JsonKey(name: 'absents') int? absents,
    @JsonKey(name: 'classroom') Classroom? classroom,
  }) = _Journal;

  factory Journal.fromJson(Map<String, dynamic> json) =>
      _$JournalFromJson(json);
}
