import 'package:freezed_annotation/freezed_annotation.dart';

part 'classroom.freezed.dart';
part 'classroom.g.dart';

@freezed
class Classroom with _$Classroom {
  factory Classroom({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'generation_id') int? generationId,
    @JsonKey(name: 'school_id') String? schoolId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'devision_id') String? devisionId,
    @JsonKey(name: 'students') int? students,
  }) = _Classroom;

  factory Classroom.fromJson(Map<String, dynamic> json) =>
      _$ClassroomFromJson(json);
}
