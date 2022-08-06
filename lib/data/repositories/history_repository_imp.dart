import 'package:hdrezka_app/data/datasources/local/database/daos/history_dao.dart';
import 'package:hdrezka_app/data/datasources/local/database/db_models/content_history_db_model.dart';
import 'package:hdrezka_app/domain/converters/db_converter.dart';
import 'package:hdrezka_app/domain/entities/content.dart';
import 'package:hdrezka_app/domain/repositories/history_repository.dart';

class HistoryRepositoryImp implements HistoryRepository {
  final DbConverter<ContentHistoryDbModel, Content> contentHistoryConverter;
  final HistoryDao historyDao;

  HistoryRepositoryImp({
    required this.contentHistoryConverter,
    required this.historyDao,
  });

  @override
  Future<void> addToHistory(Content content) async {
    await historyDao.add(
      contentHistoryConverter.entityToDbModel(content),
    );
  }

  @override
  Stream<List<Content>> get historyStream => historyDao.getAllStream().map(
        (list) => list
            .map(
              (content) => contentHistoryConverter.dbModelToEntity(content),
            )
            .toList()
          ..sort(
            ((firstContent, secondContent) => secondContent.addedToHistoryAt!
                .compareTo(firstContent.addedToHistoryAt!)),
          ),
      );
}
