import 'package:hdrezka_app/data/datasources/remote/api/models/content_details_model.dart';
import 'package:hdrezka_app/data/datasources/remote/api/models/content_model.dart';
import 'package:hdrezka_app/data/datasources/remote/api/models/seasons_wrapper_model.dart';
import 'package:hdrezka_app/data/datasources/remote/api/services/content_service.dart';
import 'package:hdrezka_app/data/repositories/content_repository_imp.dart';
import 'package:hdrezka_app/domain/converters/model_converter.dart';
import 'package:hdrezka_app/domain/entities/content.dart';
import 'package:hdrezka_app/domain/entities/content_details.dart';
import 'package:hdrezka_app/domain/entities/seasons_wrapper.dart';
import 'package:hdrezka_app/domain/repositories/content_repository.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RepositoryModule {
  @lazySingleton
  ContentRepository contentRepository(
    ContentService contentService,
    ModelConverter<ContentModel, Content> contentConverter,
    ModelConverter<ContentDetailsModel, ContentDetails> contentDetailsConverter,
    ModelConverter<SeasonsWrapperModel, SeasonsWrapper> seasonsWrapperConverter,
  ) {
    return ContentRepositoryImp(
      contentService: contentService,
      contentConverter: contentConverter,
      contentDetailsConverter: contentDetailsConverter,
      seasonsWrapperConverter: seasonsWrapperConverter,
    );
  }
}
