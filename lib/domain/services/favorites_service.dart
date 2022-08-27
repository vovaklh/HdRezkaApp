import 'package:hdrezka_app/domain/entities/content.dart';

abstract class FavoritesService {
  Stream<List<Content>> get favoritesStream;

  Future<void> addToFavorites(Content content);

  Future<void> removeFromFavorites(Content content);

  Future<bool> isFavorite(int contentId);

  Future<void> dispose();
}
