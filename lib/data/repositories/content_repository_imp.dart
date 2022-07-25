import 'package:hdrezka_app/data/datasources/local/enums/content_filter.dart';
import 'package:hdrezka_app/data/datasources/local/enums/content_type.dart';
import 'package:hdrezka_app/data/datasources/remote/api/models/content_model.dart';
import 'package:hdrezka_app/data/datasources/remote/api/services/content_service.dart';
import 'package:hdrezka_app/domain/converters/model_converter.dart';
import 'package:hdrezka_app/domain/entities/content.dart';
import 'package:hdrezka_app/domain/repositories/content_repository.dart';

class ContentRepositoryImp extends ContentRepository {
  final ContentService contentService;
  final ModelConverter<ContentModel, Content> contentConverter;

  ContentRepositoryImp({
    required this.contentService,
    required this.contentConverter,
  });

  @override
  Future<List<Content>> getContent(
    int page,
    ContentFilter filter,
    ContentType type,
  ) async {
    final response =
        await contentService.getContent(page, filter.name, type.name);

    return response
        .map((model) => contentConverter.modelToEntity(model))
        .toList();
  }
}
