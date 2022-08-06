import 'package:hdrezka_app/data/datasources/local/database/app_database.dart';
import 'package:hdrezka_app/data/datasources/local/database/daos/history_dao.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DbModule {
  @lazySingleton
  @preResolve
  Future<AppDatabase> database() async {
    final database =
        await $FloorAppDatabase.databaseBuilder('app_database.db').build();

    return database;
  }

  @lazySingleton
  HistoryDao historyDao(AppDatabase database) => database.historyDao;
}
