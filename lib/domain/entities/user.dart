import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utilities/json_converters.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'email_verified_at') DateTime? emailVerifiedAt,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'date_birth') DateTime? dateBirth,
    @JsonKey(name: 'national_student_id') String? nationalStudentId,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'motivation') String? motivation,
    @JsonKey(name: 'photo') String? photo,
    // @JsonKey(name: 'bank') String? bank,
    // @JsonKey(name: 'account_number') String? accountNumber,
    // @JsonKey(name: 'headmaster') User? headmaster,
    @JsonKey(name: 'point') @JsonStringToInt() int? point,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _User;

  factory User.fromJson(Object? json) =>
      _$UserFromJson(json as Map<String, dynamic>);
}
