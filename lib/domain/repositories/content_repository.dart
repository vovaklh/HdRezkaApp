import 'package:hdrezka_app/data/datasources/local/enums/content_filter.dart';
import 'package:hdrezka_app/data/datasources/local/enums/content_type.dart';
import 'package:hdrezka_app/domain/entities/content.dart';

abstract class ContentRepository {
  Future<List<Content>> getContent(
    int page,
    ContentFilter filter,
    ContentType type,
  );
}
