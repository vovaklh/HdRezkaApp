import 'package:dio/dio.dart';
import 'package:hdrezka_app/data/datasources/remote/api/api_string.dart';
import 'package:hdrezka_app/data/datasources/remote/api/models/content_details_model.dart';
import 'package:hdrezka_app/data/datasources/remote/api/models/content_model.dart';
import 'package:hdrezka_app/data/datasources/remote/api/models/seasons_wrapper_model.dart';
import 'package:retrofit/retrofit.dart';

part 'content_service.g.dart';

@RestApi()
abstract class ContentService {
  factory ContentService(Dio dio, {String baseUrl}) = _ContentService;

  @GET(ApiString.content)
  Future<List<ContentModel>> getContent(
    @Path('page') int page,
    @Query('filter') String filter,
    @Query('type') String type,
  );

  @GET(ApiString.contentByCategory)
  Future<List<ContentModel>> getContentByCategory(
    @Path('page') int page,
    @Query('type') String type,
    @Query('genre') String genre,
    @Query('year') int? year,
  );

  @GET(ApiString.contentDetails)
  Future<ContentDetailsModel> getContentDetails(
    @Query('mirror_less_url') String mirrorLessUrl,
  );

  @GET(ApiString.contentTranslations)
  Future<Map<String, String>> getContentTranslations(
    @Query('url') String url,
  );

  @GET(ApiString.movieVideos)
  Future<Map<String, String>> getMovieVideos(
    @Query('url') String url,
    @Query('translation_id') String translationId,
  );

  @GET(ApiString.tvSeriesSeasons)
  Future<SeasonsWrapperModel> getTvSeriesSeasons(
    @Query('url') String url,
    @Query('translation_id') String translationId,
  );

  @GET(ApiString.tvSeriesVideos)
  Future<Map<String, String>> getTvSeriesVideos(
    @Query('url') String url,
    @Query('translation_id') String translationId,
    @Query('season_id') String seasonId,
    @Query('series_id') String seriesId,
  );

  @GET(ApiString.search)
  Future<List<ContentModel>> search(
    @Query('query') String query,
    @Query('page') int page,
  );
}
