import 'dart:async';

import 'package:floor/floor.dart';
import 'package:hdrezka_app/data/datasources/local/database/daos/history_dao.dart';
import 'package:hdrezka_app/data/datasources/local/database/daos/favorites_dao.dart';
import 'package:hdrezka_app/data/datasources/local/database/db_models/content_history_db_model.dart';
import 'package:hdrezka_app/data/datasources/local/database/db_models/content_favorite_db_model.dart';
import 'package:hdrezka_app/data/datasources/local/database/type_converter/datetime_converter.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'app_database.g.dart'; // the generated code will be there

@TypeConverters([DateTimeConverter])
@Database(version: 1, entities: [ContentHistoryDbModel, ContentFavoriteDbModel])
abstract class AppDatabase extends FloorDatabase {
  HistoryDao get historyDao;
  FavoritesDao get favoritesDao;
}
