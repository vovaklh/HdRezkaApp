import 'package:hdrezka_app/domain/entities/content.dart';
import 'package:hdrezka_app/domain/repositories/history_repository.dart';
import 'package:hdrezka_app/domain/services/history_service.dart';

class HistoryRepositoryImp implements HistoryRepository {
  final HistoryService historyService;

  HistoryRepositoryImp({
    required this.historyService,
  });

  @override
  Stream<List<Content>> get historyStream => historyService.historyStream;

  @override
  Future<void> addToHistory(Content content) async {
    await historyService.addToHistory(content);
  }
}
