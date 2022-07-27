import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hdrezka_app/data/datasources/local/enums/content_affilation.dart';
import 'package:hdrezka_app/data/datasources/remote/api/models/content_data_model.dart';

part 'content_details_model.freezed.dart';
part 'content_details_model.g.dart';

@freezed
class ContentDetailsModel with _$ContentDetailsModel {
  const factory ContentDetailsModel({
    required int id,
    required String url,
    required String title,
    required ContentAffilation affilation,
    required String description,
    required String imageUrl,
    @ContentDataModelListConverter() required List<ContentDataModel> data,
  }) = _ContentDetailsModel;

  factory ContentDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ContentDetailsModelFromJson(json);
}
