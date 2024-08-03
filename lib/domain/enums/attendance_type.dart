import 'package:freezed_annotation/freezed_annotation.dart';

enum AttendanceType {
  @JsonValue('hadir')
  present,
  @JsonValue('sakit')
  sick,
  @JsonValue('alfa')
  absent,
  @JsonValue('izin')
  permit,
}

extension AttendanceTypeExtension on AttendanceType {
  String get value => switch (this) {
        AttendanceType.present => 'hadir',
        AttendanceType.sick => 'sakit',
        AttendanceType.absent => 'alfa',
        AttendanceType.permit => 'izin',
      };
}
