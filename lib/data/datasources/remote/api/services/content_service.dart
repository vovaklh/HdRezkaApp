import 'package:dio/dio.dart';
import 'package:hdrezka_app/data/datasources/remote/api/api_string.dart';
import 'package:hdrezka_app/data/datasources/remote/api/models/content_model.dart';
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
}
