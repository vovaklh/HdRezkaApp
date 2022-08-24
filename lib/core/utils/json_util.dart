import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

DateFormat get _formatter => DateFormat("d MMMM yyyy 'at' HH:mm:ss");

class NullableDateTimeConverter implements JsonConverter<DateTime?, dynamic> {
  const NullableDateTimeConverter();

  @override
  DateTime? fromJson(dynamic json) {
    return json is String && json.trim().isNotEmpty
        ? _formatter.parse(json)
        : null;
  }

  @override
  dynamic toJson(DateTime? object) {
    return object == null ? null : _formatter.format(object);
  }
}
