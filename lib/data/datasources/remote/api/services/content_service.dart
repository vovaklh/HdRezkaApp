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
    @Query('genre') String genre,
  );

  @GET(ApiString.contentDetails)
  Future<ContentDetailsModel> getContentDetails(
    @Query('url') String filter,
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
}
