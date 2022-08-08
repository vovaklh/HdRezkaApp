import 'package:hdrezka_app/data/datasources/local/database/db_models/content_favorite_db_model.dart';
import 'package:hdrezka_app/domain/converters/db_converter.dart';
import 'package:hdrezka_app/domain/entities/content.dart';

class ContentFavoriteConverter
    extends DbConverter<ContentFavoriteDbModel, Content> {
  @override
  Content dbModelToEntity(ContentFavoriteDbModel model) {
    return Content(
      id: model.id,
      title: model.title,
      shortInfo: model.shortInfo,
      mirrorLessUrl: model.mirrorLessUrl,
      imageUrl: model.imageUrl,
      type: model.type,
      status: model.status,
      addedToFavoritesAt: model.addedAt,
    );
  }

  @override
  ContentFavoriteDbModel entityToDbModel(Content entity) {
    return ContentFavoriteDbModel(
      id: entity.id,
      title: entity.title,
      shortInfo: entity.shortInfo,
      mirrorLessUrl: entity.mirrorLessUrl,
      imageUrl: entity.imageUrl,
      type: entity.type,
      status: entity.status,
      addedAt: DateTime.now(),
    );
  }
}
