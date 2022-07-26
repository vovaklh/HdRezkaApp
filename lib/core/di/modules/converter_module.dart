import 'package:hdrezka_app/data/datasources/remote/api/converters/content_converter.dart';
import 'package:hdrezka_app/data/datasources/remote/api/converters/content_data_converter.dart';
import 'package:hdrezka_app/data/datasources/remote/api/converters/content_details_converter.dart';
import 'package:hdrezka_app/data/datasources/remote/api/converters/seasons_wrapper_converter.dart';
import 'package:hdrezka_app/data/datasources/remote/api/models/content_data_model.dart';
import 'package:hdrezka_app/data/datasources/remote/api/models/content_details_model.dart';
import 'package:hdrezka_app/data/datasources/remote/api/models/content_model.dart';
import 'package:hdrezka_app/data/datasources/remote/api/models/seasons_wrapper_model.dart';
import 'package:hdrezka_app/data/datasources/remote/firebase/converters/content_fb_converter.dart';
import 'package:hdrezka_app/data/datasources/remote/firebase/models/content_fb_model.dart';
import 'package:hdrezka_app/domain/converters/fb_converter.dart';
import 'package:hdrezka_app/domain/converters/model_converter.dart';
import 'package:hdrezka_app/domain/entities/content.dart';
import 'package:hdrezka_app/domain/entities/content_data.dart';
import 'package:hdrezka_app/domain/entities/content_details.dart';
import 'package:hdrezka_app/domain/entities/seasons_wrapper.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ConverterModule {
  @lazySingleton
  ModelConverter<ContentModel, Content> contentConveter() {
    return ContentConverter();
  }

  @lazySingleton
  ModelConverter<ContentDataModel, ContentData> contentDataConveter() {
    return ContentDataConverter();
  }

  @lazySingleton
  ModelConverter<ContentDetailsModel, ContentDetails> contentDetailsConveter(
    ModelConverter<ContentDataModel, ContentData> dataConverter,
  ) {
    return ContentDetailsConverter(dataConverter);
  }

  @lazySingleton
  ModelConverter<SeasonsWrapperModel, SeasonsWrapper>
      seasonsWrapperConverter() {
    return SeasonsWrapperConverter();
  }

  // Fb converters
  @lazySingleton
  FbConverter<ContentFbModel, Content> contentFbConverter() {
    return ContentFbConverter();
  }
}
