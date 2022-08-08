import 'package:floor/floor.dart';
import 'package:hdrezka_app/data/datasources/local/database/db_models/content_favorite_db_model.dart';

@dao
abstract class FavoritesDao {
  @Query('SELECT * FROM Favorites')
  Stream<List<ContentFavoriteDbModel>> getAllStream();

  @Query('SELECT * FROM Favorites WHERE id = :id')
  Future<ContentFavoriteDbModel?> getById(int id);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> add(ContentFavoriteDbModel content);

  @delete
  Future<void> deleteFavorite(ContentFavoriteDbModel content);
}
