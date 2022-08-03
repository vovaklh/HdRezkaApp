import 'package:hdrezka_app/data/datasources/local/enums/content_filter.dart';
import 'package:hdrezka_app/data/datasources/local/enums/content_type.dart';
import 'package:hdrezka_app/domain/entities/content.dart';
import 'package:hdrezka_app/domain/entities/content_details.dart';
import 'package:hdrezka_app/domain/entities/seasons_wrapper.dart';

abstract class ContentRepository {
  Future<List<Content>> getContent(
    int page,
    ContentFilter filter,
    ContentType type,
  );

  Future<List<Content>> search(String query, int page);

  Future<ContentDetails> getContentDetails(String url);

  Future<Map<String, String>> getContentTranslations(String url);

  Future<Map<String, String>> getMovieVideos(String url, String translationId);

  Future<SeasonsWrapper> getTvSeriesSeasons(String url, String translationId);

  Future<Map<String, String>> getTvSeriesVideos(
    String url,
    String translationId,
    String seasonId,
    String seriesId,
  );
}
