import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_data_model.freezed.dart';

@freezed
class ContentDataModel with _$ContentDataModel {
  const ContentDataModel._();

  const factory ContentDataModel({
    required String name,
    required String value,
  }) = _ContentDataModel;
}

class ContentDataModelListConverter
    implements JsonConverter<List<ContentDataModel>, List<dynamic>> {
  const ContentDataModelListConverter();

  @override
  List<ContentDataModel> fromJson(List<dynamic> json) {
    final list = List<Map<String, dynamic>>.from(json)
        .map((map) => map.entries)
        .map((entries) => entries
            .map(
              (entry) => ContentDataModel(
                name: entry.key,
                value: entry.value,
              ),
            )
            .toList())
        .expand((models) => models)
        .toList();
    return list;
  }

  @override
  List<dynamic> toJson(List<ContentDataModel> object) {
    return object.map((model) => {model.name: model.value}).toList();
  }
}
