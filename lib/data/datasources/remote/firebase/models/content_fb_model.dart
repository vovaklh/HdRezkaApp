import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hdrezka_app/core/utils/json_util.dart';

part 'content_fb_model.freezed.dart';
part 'content_fb_model.g.dart';

@freezed
class ContentFbModel with _$ContentFbModel {
  const ContentFbModel._();

  const factory ContentFbModel({
    required int id,
    required String title,
    required String shortInfo,
    required String mirrorLessUrl,
    required String imageUrl,
    required String type,
    String? status,
    @NullableDateTimeConverter() DateTime? addedToHistoryAt,
    @NullableDateTimeConverter() DateTime? addedToFavoritesAt,
  }) = _ContentFbModel;

  factory ContentFbModel.fromJson(Map<String, dynamic> json) =>
      _$ContentFbModelFromJson(json);
}
