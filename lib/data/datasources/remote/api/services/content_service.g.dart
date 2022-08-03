// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _ContentService implements ContentService {
  _ContentService(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<ContentModel>> getContent(page, filter, genre) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'filter': filter,
      r'genre': genre
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<ContentModel>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'content/page/${page}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => ContentModel.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<ContentDetailsModel> getContentDetails(filter) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'url': filter};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ContentDetailsModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'content/details',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ContentDetailsModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Map<String, String>> getContentTranslations(url) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'url': url};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Map<String, String>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'content/translations',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data!.cast<String, String>();
    return value;
  }

  @override
  Future<Map<String, String>> getMovieVideos(url, translationId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'url': url,
      r'translation_id': translationId
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Map<String, String>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'content/movie/videos',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data!.cast<String, String>();
    return value;
  }

  @override
  Future<SeasonsWrapperModel> getTvSeriesSeasons(url, translationId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'url': url,
      r'translation_id': translationId
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SeasonsWrapperModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'content/tv_series/seasons',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SeasonsWrapperModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Map<String, String>> getTvSeriesVideos(
      url, translationId, seasonId, seriesId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'url': url,
      r'translation_id': translationId,
      r'season_id': seasonId,
      r'series_id': seriesId
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Map<String, String>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'content/tv_series/videos',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data!.cast<String, String>();
    return value;
  }

  @override
  Future<List<ContentModel>> search(query, page) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'query': query, r'page': page};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<ContentModel>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'content/search',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => ContentModel.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
