import 'package:hdrezka_app/domain/repositories/content_repository.dart';
import 'package:hdrezka_app/domain/repositories/favorites_repository.dart';
import 'package:hdrezka_app/domain/repositories/history_repository.dart';
import 'package:hdrezka_app/presentation/cubits/categories_cubit/categories_cubit.dart';
import 'package:hdrezka_app/presentation/cubits/content_details_cubit/content_details_cubit.dart';
import 'package:hdrezka_app/presentation/cubits/favorites_cubit.dart/favorites_cubit.dart';
import 'package:hdrezka_app/presentation/cubits/history_cubit/history_cubit.dart';
import 'package:injectable/injectable.dart';

@module
abstract class CubitModule {
  @factoryMethod
  HistoryCubit historyCybit(HistoryRepository historyRepository) {
    return HistoryCubit(historyRepository: historyRepository);
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
}
