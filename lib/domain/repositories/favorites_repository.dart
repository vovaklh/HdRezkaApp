import 'package:hdrezka_app/domain/entities/content.dart';

abstract class FavoritesRepository {
  Stream<List<Content>> get favoritesStream;

  Future<void> addToFavorites(Content content);

  Future<void> deleteFromFavorites(Content content);

  Future<bool> isFavorite(int contentId);
}
