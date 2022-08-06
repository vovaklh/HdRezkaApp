import 'package:floor/floor.dart';
import 'package:hdrezka_app/data/datasources/local/database/db_models/content_history_db_model.dart';

@dao
abstract class HistoryDao {
  @Query('SELECT * FROM History')
  Stream<List<ContentHistoryDbModel>> getAllStream();

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> add(ContentHistoryDbModel person);
}
