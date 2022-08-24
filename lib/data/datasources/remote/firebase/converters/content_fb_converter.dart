import 'package:hdrezka_app/data/datasources/remote/firebase/models/content_fb_model.dart';
import 'package:hdrezka_app/domain/converters/fb_converter.dart';
import 'package:hdrezka_app/domain/entities/content.dart';

class ContentFbConverter implements FbConverter<ContentFbModel, Content> {
  @override
  ContentFbModel entityToFbModel(Content entity) {
    return ContentFbModel(
      id: entity.id,
      title: entity.title,
      shortInfo: entity.shortInfo,
      mirrorLessUrl: entity.mirrorLessUrl,
      imageUrl: entity.imageUrl,
      type: entity.contentType.value,
      status: entity.status,
      addedToHistoryAt: entity.addedToHistoryAt,
      addedToFavoritesAt: entity.addedToFavoritesAt,
    );
  }

  @override
  Content fbModelToEntity(ContentFbModel model) {
    return Content(
      id: model.id,
      title: model.title,
      shortInfo: model.shortInfo,
      mirrorLessUrl: model.mirrorLessUrl,
      imageUrl: model.imageUrl,
      type: model.type,
      status: model.status,
      addedToHistoryAt: model.addedToHistoryAt,
      addedToFavoritesAt: model.addedToFavoritesAt,
    );
  }
}
