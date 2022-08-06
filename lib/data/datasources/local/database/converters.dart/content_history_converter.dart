import 'package:hdrezka_app/data/datasources/local/database/db_models/content_history_db_model.dart';
import 'package:hdrezka_app/domain/converters/db_converter.dart';
import 'package:hdrezka_app/domain/entities/content.dart';

class ContentHistoryConverter
    extends DbConverter<ContentHistoryDbModel, Content> {
  @override
  Content dbModelToEntity(ContentHistoryDbModel model) {
    return Content(
      id: model.id,
      title: model.title,
      shortInfo: model.shortInfo,
      mirrorLessUrl: model.mirrorLessUrl,
      imageUrl: model.imageUrl,
      type: model.type,
      status: model.status,
      addedToHistoryAt: model.addedAt,
    );
  }

  @override
  ContentHistoryDbModel entityToDbModel(Content entity) {
    return ContentHistoryDbModel(
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
