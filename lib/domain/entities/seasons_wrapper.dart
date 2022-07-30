import 'package:freezed_annotation/freezed_annotation.dart';

part 'seasons_wrapper.freezed.dart';

@freezed
class SeasonsWrapper with _$SeasonsWrapper {
  const factory SeasonsWrapper({
    required String translationId,
    required Map<String, String> seasons,
    required Map<String, Map<String, String>> episodes,
  }) = _SeasonsWrapper;
}
