import 'package:hdrezka_app/data/datasources/remote/api/models/content_data_model.dart';
import 'package:hdrezka_app/domain/converters/model_converter.dart';
import 'package:hdrezka_app/domain/entities/content_data.dart';

class ContentDataConverter
    extends ModelConverter<ContentDataModel, ContentData> {
  @override
  ContentData modelToEntity(ContentDataModel model) {
    return ContentData(name: model.name, value: model.value);
  }
}
