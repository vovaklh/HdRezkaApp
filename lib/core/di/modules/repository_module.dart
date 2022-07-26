import 'package:hdrezka_app/data/datasources/local/shared_prefs.dart';
import 'package:hdrezka_app/data/datasources/remote/api/models/content_details_model.dart';
import 'package:hdrezka_app/data/datasources/remote/api/models/content_model.dart';
import 'package:hdrezka_app/data/datasources/remote/api/models/seasons_wrapper_model.dart';
import 'package:hdrezka_app/data/datasources/remote/api/services/content_service.dart';
import 'package:hdrezka_app/data/repositories/content_repository_imp.dart';
import 'package:hdrezka_app/data/repositories/favorites_repository_imp.dart';
import 'package:hdrezka_app/data/repositories/history_repository_imp.dart';
import 'package:hdrezka_app/data/repositories/settings_repository_imp.dart';
import 'package:hdrezka_app/domain/converters/model_converter.dart';
import 'package:hdrezka_app/domain/entities/content.dart';
import 'package:hdrezka_app/domain/entities/content_details.dart';
import 'package:hdrezka_app/domain/entities/seasons_wrapper.dart';
import 'package:hdrezka_app/domain/repositories/content_repository.dart';
import 'package:hdrezka_app/domain/repositories/favorites_repository.dart';
import 'package:hdrezka_app/domain/repositories/history_repository.dart';
import 'package:hdrezka_app/domain/repositories/settings_repository.dart';
import 'package:hdrezka_app/domain/services/auth_service.dart';
import 'package:hdrezka_app/domain/services/favorites_service.dart';
import 'package:hdrezka_app/domain/services/history_service.dart';
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
  HistoryRepository historyRepository(HistoryService historyService) {
    return HistoryRepositoryImp(historyService: historyService);
  }

  @lazySingleton
  FavoritesRepository favoritesRepository(FavoritesService favoritesService) {
    return FavoritesRepositoryImp(favoritesService: favoritesService);
  }

  @lazySingleton
  @preResolve
  Future<SettingsRepository> settingsRepository(
    AuthService authService,
    SharedPrefs sharedPrefs,
  ) async {
    final repository = SettingsRepositoryImp(
      authService: authService,
      sharedPrefs: sharedPrefs,
    );
    await repository.loadSettings();

    return repository;
  }
}
