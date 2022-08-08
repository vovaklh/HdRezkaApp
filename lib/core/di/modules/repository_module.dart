import 'package:hdrezka_app/data/datasources/local/database/daos/favorites_dao.dart';
import 'package:hdrezka_app/data/datasources/local/database/daos/history_dao.dart';
import 'package:hdrezka_app/data/datasources/local/database/db_models/content_favorite_db_model.dart';
import 'package:hdrezka_app/data/datasources/local/database/db_models/content_history_db_model.dart';
import 'package:hdrezka_app/data/datasources/remote/api/models/content_details_model.dart';
import 'package:hdrezka_app/data/datasources/remote/api/models/content_model.dart';
import 'package:hdrezka_app/data/datasources/remote/api/models/seasons_wrapper_model.dart';
import 'package:hdrezka_app/data/datasources/remote/api/services/content_service.dart';
import 'package:hdrezka_app/data/repositories/content_repository_imp.dart';
import 'package:hdrezka_app/data/repositories/favorites_repository_imp.dart';
import 'package:hdrezka_app/data/repositories/history_repository_imp.dart';
import 'package:hdrezka_app/domain/converters/db_converter.dart';
import 'package:hdrezka_app/domain/converters/model_converter.dart';
import 'package:hdrezka_app/domain/entities/content.dart';
import 'package:hdrezka_app/domain/entities/content_details.dart';
import 'package:hdrezka_app/domain/entities/seasons_wrapper.dart';
import 'package:hdrezka_app/domain/repositories/content_repository.dart';
import 'package:hdrezka_app/domain/repositories/favorites_repository.dart';
import 'package:hdrezka_app/domain/repositories/history_repository.dart';
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

  @lazySingleton
  HistoryRepository historyRepository(
    DbConverter<ContentHistoryDbModel, Content> contentHistoryConverter,
    HistoryDao historyDao,
  ) {
    return HistoryRepositoryImp(
      contentHistoryConverter: contentHistoryConverter,
      historyDao: historyDao,
    );
  }

  @lazySingleton
  FavoritesRepository favoritesRepository(
    DbConverter<ContentFavoriteDbModel, Content> contentFavoriteConverter,
    FavoritesDao favoritesDao,
  ) {
    return FavoritesRepositoryImp(
      contentFavoriteConverter: contentFavoriteConverter,
      favoritesDao: favoritesDao,
    );
  }
}
