import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_model.freezed.dart';
part 'content_model.g.dart';

@freezed
class ContentModel with _$ContentModel {
  const ContentModel._();

  const factory ContentModel({
    required int id,
    required String url,
    required String type,
    required String title,
    required String shortInfo,
    required String imageUrl,
    String? status,
  }) = _ContentModel;

  factory ContentModel.fromJson(Map<String, dynamic> json) =>
      _$ContentModelFromJson(json);
}
