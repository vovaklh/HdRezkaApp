// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  HistoryDao? _historyDaoInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback? callback]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `History` (`id` INTEGER NOT NULL, `mirrorLessUrl` TEXT NOT NULL, `type` TEXT NOT NULL, `title` TEXT NOT NULL, `shortInfo` TEXT NOT NULL, `imageUrl` TEXT NOT NULL, `status` TEXT, `addedAt` INTEGER NOT NULL, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  HistoryDao get historyDao {
    return _historyDaoInstance ??= _$HistoryDao(database, changeListener);
  }
}

class _$HistoryDao extends HistoryDao {
  _$HistoryDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _contentHistoryDbModelInsertionAdapter = InsertionAdapter(
            database,
            'History',
            (ContentHistoryDbModel item) => <String, Object?>{
                  'id': item.id,
                  'mirrorLessUrl': item.mirrorLessUrl,
                  'type': item.type,
                  'title': item.title,
                  'shortInfo': item.shortInfo,
                  'imageUrl': item.imageUrl,
                  'status': item.status,
                  'addedAt': _dateTimeConverter.encode(item.addedAt)
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<ContentHistoryDbModel>
      _contentHistoryDbModelInsertionAdapter;

  @override
  Stream<List<ContentHistoryDbModel>> getAllStream() {
    return _queryAdapter.queryListStream('SELECT * FROM History',
        mapper: (Map<String, Object?> row) => ContentHistoryDbModel(
            id: row['id'] as int,
            mirrorLessUrl: row['mirrorLessUrl'] as String,
            type: row['type'] as String,
            title: row['title'] as String,
            shortInfo: row['shortInfo'] as String,
            imageUrl: row['imageUrl'] as String,
            addedAt: _dateTimeConverter.decode(row['addedAt'] as int),
            status: row['status'] as String?),
        queryableName: 'History',
        isView: false);
  }

  @override
  Future<void> add(ContentHistoryDbModel person) async {
    await _contentHistoryDbModelInsertionAdapter.insert(
        person, OnConflictStrategy.replace);
  }
}

// ignore_for_file: unused_element
final _dateTimeConverter = DateTimeConverter();
