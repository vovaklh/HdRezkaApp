import 'package:json_annotation/json_annotation.dart';

enum ContentAffilation {
  @JsonValue("movie")
  movie,
  @JsonValue("tv_series")
  series;
}
