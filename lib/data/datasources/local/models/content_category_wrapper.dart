import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hdrezka_app/data/datasources/local/enums/content_genre.dart';
import 'package:hdrezka_app/data/datasources/local/enums/content_type.dart';

part 'content_category_wrapper.freezed.dart';

@freezed
class ContentCategoryWrapper with _$ContentCategoryWrapper {
  const factory ContentCategoryWrapper({
    required ContentType type,
    required ContentGenre genre,
    int? year,
  }) = _ContentCategoryWrapper;

  factory ContentCategoryWrapper.initial() => const ContentCategoryWrapper(
        type: ContentType.film,
        genre: ContentGenre.any,
      );
}
