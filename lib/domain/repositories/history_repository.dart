import 'package:hdrezka_app/domain/entities/content.dart';

abstract class HistoryRepository {
  Stream<List<Content>> get historyStream;

  Future<void> addToHistory(Content person);
}
