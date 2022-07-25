import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hdrezka_app/data/datasources/local/enums/content_type.dart';

part 'content.freezed.dart';

@freezed
class Content with _$Content {
  const Content._();

  const factory Content({
    required int id,
    required String title,
    required String shortInfo,
    required String url,
    required String imageUrl,
    required String type,
    String? status,
  }) = _Content;

  ContentType get contentType =>
      ContentType.values.firstWhere((content) => content.value == type);
}
