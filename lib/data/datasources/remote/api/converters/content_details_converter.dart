import 'package:hdrezka_app/data/datasources/remote/api/models/content_data_model.dart';
import 'package:hdrezka_app/data/datasources/remote/api/models/content_details_model.dart';
import 'package:hdrezka_app/domain/converters/model_converter.dart';
import 'package:hdrezka_app/domain/entities/content_data.dart';
import 'package:hdrezka_app/domain/entities/content_details.dart';

class ContentDetailsConverter
    extends ModelConverter<ContentDetailsModel, ContentDetails> {
  final ModelConverter<ContentDataModel, ContentData> dataConverter;

  ContentDetailsConverter(this.dataConverter);

  @override
  ContentDetails modelToEntity(ContentDetailsModel model) {
    return ContentDetails(
      id: model.id,
      url: model.url,
      title: model.title,
      affilation: model.affilation,
      description: model.description,
      imageUrl: model.imageUrl,
      data: model.data
          .map((model) => dataConverter.modelToEntity(model))
          .toList(),
    );
  }
}
