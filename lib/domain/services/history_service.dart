import 'package:hdrezka_app/domain/entities/content.dart';

abstract class HistoryService {
  Stream<List<Content>> get historyStream;

  Future<void> addToHistory(Content content);

  Future<void> dispose();
}
