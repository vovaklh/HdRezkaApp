import 'package:hdrezka_app/data/datasources/remote/api/converters/content_converter.dart';
import 'package:hdrezka_app/data/datasources/remote/api/models/content_model.dart';
import 'package:hdrezka_app/domain/converters/model_converter.dart';
import 'package:hdrezka_app/domain/entities/content.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ConverterModule {
  @lazySingleton
  ModelConverter<ContentModel, Content> contentConveter() {
    return ContentConverter();
  }
}
