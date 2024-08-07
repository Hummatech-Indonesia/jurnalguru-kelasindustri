import 'package:freezed_annotation/freezed_annotation.dart';

class JsonStringToInt implements JsonConverter<int?, dynamic> {
  const JsonStringToInt();

  @override
  int? fromJson(dynamic json) {
    if (json is num) {
      return json.toInt();
    }
    return int.tryParse(json);
  }

  @override
  String? toJson(int? object) => object.toString();
}
