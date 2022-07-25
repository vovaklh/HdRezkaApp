import 'package:dio/dio.dart';
import 'package:hdrezka_app/data/datasources/remote/api/interceptors/header_interceptor.dart';
import 'package:hdrezka_app/data/datasources/remote/api/services/content_service.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ApiModule {
  @Named("BaseUrl")
  String get baseDevUrl => 'http://192.168.0.110:8888/';

  @lazySingleton
  Dio dioClient() {
    final client = Dio();

    client.interceptors.addAll(
      [
        LogInterceptor(
          requestBody: true,
          responseBody: true,
        ),
        HeaderInterceptor(),
      ],
    );

    return client;
  }

  @lazySingleton
  ContentService contentService(Dio client, @Named('BaseUrl') String baseUrl) {
    return ContentService(client, baseUrl: baseUrl);
  }
}
