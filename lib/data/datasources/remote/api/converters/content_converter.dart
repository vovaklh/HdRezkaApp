import 'package:hdrezka_app/data/datasources/remote/api/models/content_model.dart';
import 'package:hdrezka_app/domain/converters/model_converter.dart';
import 'package:hdrezka_app/domain/entities/content.dart';

class ContentConverter extends ModelConverter<ContentModel, Content> {
  @override
  Content modelToEntity(ContentModel model) {
    return Content(
      id: model.id,
      title: model.title,
      shortInfo: model.shortInfo,
      url: model.url,
      imageUrl: model.imageUrl,
      type: model.type,
      status: model.status,
    );
  }
}
