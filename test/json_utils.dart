import 'package:hdrezka_app/data/datasources/remote/api/models/content_model.dart';
import 'package:hdrezka_app/data/datasources/remote/api/models/content_details_model.dart';

typedef FromJsonConverter<T> = T Function(Map<String, dynamic>);
typedef ToJsonConverter<T> = Map<String, dynamic> Function(T);

class JsonMock {
  static String getJsonMockPath<T>() => _jsonMockPathMap[T]!;

  static const Map<Type, String> _jsonMockPathMap = {
    ContentModel: 'test/mocks/content_model.json',
    ContentDetailsModel: 'test/mocks/content_details_model.json',
  };

  static FromJsonConverter<T> getFromJson<T>() =>
      _getFromJsonMap[T]! as FromJsonConverter<T>;

  static final Map<Type, dynamic> _getFromJsonMap = {
    ContentModel: (json) => ContentModel.fromJson(json),
    ContentDetailsModel: (json) => ContentDetailsModel.fromJson(json),
  };

  static ToJsonConverter<T> getToJson<T>() =>
      _getToJsonMap[T]! as ToJsonConverter<T>;

  static final Map<Type, dynamic> _getToJsonMap = {
    ContentModel: (ContentModel m) => m.toJson(),
    ContentDetailsModel: (ContentDetailsModel m) => m.toJson(),
  };
}
