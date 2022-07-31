import 'package:freezed_annotation/freezed_annotation.dart';

part 'seasons_wrapper_model.freezed.dart';
part 'seasons_wrapper_model.g.dart';

@freezed
class SeasonsWrapperModel with _$SeasonsWrapperModel {
  const factory SeasonsWrapperModel({
    @JsonKey(name: 'translator_id') required String translationId,
    required Map<String, String> seasons,
    required Map<String, Map<String, String>> episodes,
  }) = _SeasonsWrapperModel;

  factory SeasonsWrapperModel.fromJson(Map<String, dynamic> json) =>
      _$SeasonsWrapperModelFromJson(json);
}
