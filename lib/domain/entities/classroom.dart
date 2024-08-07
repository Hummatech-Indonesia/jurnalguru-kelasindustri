import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utilities/json_converters.dart';

part 'classroom.freezed.dart';
part 'classroom.g.dart';

@freezed
class Classroom with _$Classroom {
  factory Classroom({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'generation_id') @JsonStringToInt() int? generationId,
    @JsonKey(name: 'school_id') String? schoolId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'devision_id') String? devisionId,
    @JsonKey(name: 'students') @JsonStringToInt() int? students,
  }) = _Classroom;

  factory Classroom.fromJson(Object? json) =>
      _$ClassroomFromJson(json as Map<String, dynamic>);
}
