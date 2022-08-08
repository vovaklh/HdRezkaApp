import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hdrezka_app/data/datasources/local/enums/content_affilation.dart';
import 'package:hdrezka_app/domain/entities/content_data.dart';

part 'content_details.freezed.dart';

@freezed
class ContentDetails with _$ContentDetails {
  const factory ContentDetails({
    required int id,
    required String url,
    required String title,
    required ContentAffilation affilation,
    required String description,
    required String imageUrl,
    required List<ContentData> data,
    @Default(false) bool isFavorite,
  }) = _ContentDetails;
}
