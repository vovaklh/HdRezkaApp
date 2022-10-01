import 'package:hdrezka_app/domain/repositories/content_repository.dart';
import 'package:hdrezka_app/domain/repositories/favorites_repository.dart';
import 'package:hdrezka_app/domain/repositories/history_repository.dart';
import 'package:hdrezka_app/domain/repositories/settings_repository.dart';
import 'package:hdrezka_app/presentation/cubits/categories_cubit/categories_cubit.dart';
import 'package:hdrezka_app/presentation/cubits/content_cubit/content_cubit.dart';
import 'package:hdrezka_app/presentation/cubits/content_details_cubit/content_details_cubit.dart';
import 'package:hdrezka_app/presentation/cubits/favorites_cubit.dart/favorites_cubit.dart';
import 'package:hdrezka_app/presentation/cubits/history_cubit/history_cubit.dart';
import 'package:hdrezka_app/presentation/cubits/movie_cubit/movie_cubit.dart';
import 'package:hdrezka_app/presentation/cubits/series_cubit/tv_series_cubit.dart';
import 'package:hdrezka_app/presentation/cubits/settings_cubit.dart/settings_cubit.dart';
import 'package:hdrezka_app/presentation/cubits/video_cubit/video_cubit.dart';
import 'package:injectable/injectable.dart';

@module
abstract class CubitModule {
  @factoryMethod
  HistoryCubit historyCybit(HistoryRepository historyRepository) {
    return HistoryCubit(historyRepository: historyRepository);
  }

  @factoryMethod
  ContentCubit contentCubit(
    ContentRepository contentRepository,
  ) {
    return ContentCubit(
      contentRepository: contentRepository,
    );
  }

  @factoryMethod
  ContentDetailsCubit contentDetailsCubit(
    ContentRepository contentRepository,
    HistoryRepository historyRepository,
    FavoritesRepository favoritesRepository,
  ) {
    return ContentDetailsCubit(
      contentRepository: contentRepository,
      historyRepository: historyRepository,
      favoritesRepository: favoritesRepository,
    );
  }

  @factoryMethod
  MovieCubit movieCubit(
    ContentRepository contentRepository,
  ) {
    return MovieCubit(
      contentRepository: contentRepository,
    );
  }

  @factoryMethod
  VideoCubit videoCubit(
    ContentRepository contentRepository,
  ) {
    return VideoCubit(
      contentRepository: contentRepository,
    );
  }

  @factoryMethod
  TvSeriesCubit tvSeriesCubit(
    ContentRepository contentRepository,
  ) {
    return TvSeriesCubit(
      contentRepository: contentRepository,
    );
  }

  @factoryMethod
  FavoritesCubit favoritesCubit(
    FavoritesRepository favoritesRepository,
  ) {
    return FavoritesCubit(
      favoritesRepository: favoritesRepository,
    );
  }

  @factoryMethod
  CategoriesCubit categoriesCubit(ContentRepository contentRepository) {
    return CategoriesCubit(contentRepository: contentRepository);
  }

  @factoryMethod
  SettingsCubit settingsCubit(SettingsRepository settingsRepository) {
    return SettingsCubit(settingsRepository: settingsRepository);
  }
}
