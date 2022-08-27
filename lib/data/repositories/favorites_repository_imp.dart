import 'package:hdrezka_app/domain/entities/content.dart';
import 'package:hdrezka_app/domain/repositories/favorites_repository.dart';
import 'package:hdrezka_app/domain/services/favorites_service.dart';

class FavoritesRepositoryImp implements FavoritesRepository {
  final FavoritesService favoritesService;

  FavoritesRepositoryImp({
    required this.favoritesService,
  });

  @override
  Stream<List<Content>> get favoritesStream => favoritesService.favoritesStream;

  @override
  Future<void> addToFavorites(Content content) async {
    await favoritesService.addToFavorites(content);
  }

  @override
  Future<void> deleteFromFavorites(Content content) async {
    await favoritesService.removeFromFavorites(content);
  }

  @override
  Future<bool> isFavorite(int contentId) async {
    return await favoritesService.isFavorite(contentId);
  }
}
