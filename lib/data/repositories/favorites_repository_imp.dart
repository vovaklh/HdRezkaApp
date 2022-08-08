import 'package:hdrezka_app/data/datasources/local/database/daos/favorites_dao.dart';
import 'package:hdrezka_app/data/datasources/local/database/db_models/content_favorite_db_model.dart';
import 'package:hdrezka_app/domain/converters/db_converter.dart';
import 'package:hdrezka_app/domain/entities/content.dart';
import 'package:hdrezka_app/domain/repositories/favorites_repository.dart';

class FavoritesRepositoryImp implements FavoritesRepository {
  final DbConverter<ContentFavoriteDbModel, Content> contentFavoriteConverter;
  final FavoritesDao favoritesDao;

  FavoritesRepositoryImp({
    required this.contentFavoriteConverter,
    required this.favoritesDao,
  });

  @override
  Stream<List<Content>> get favoritesStream => favoritesDao.getAllStream().map(
        (list) => list
            .map(
              (content) => contentFavoriteConverter.dbModelToEntity(content),
            )
            .toList()
          ..sort(
            (firstContent, secondContent) => secondContent.addedToFavoritesAt!
                .compareTo(firstContent.addedToFavoritesAt!),
          ),
      );

  @override
  Future<void> addToFavorites(Content content) async {
    await favoritesDao.add(
      contentFavoriteConverter.entityToDbModel(content),
    );
  }

  @override
  Future<void> deleteFromFavorites(Content content) async {
    await favoritesDao.deleteFavorite(
      contentFavoriteConverter.entityToDbModel(content),
    );
  }

  @override
  Future<bool> isFavorite(int contentId) async {
    final content = await favoritesDao.getById(contentId);

    return content != null;
  }
}
