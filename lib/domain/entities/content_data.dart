import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_data.freezed.dart';

@freezed
class ContentData with _$ContentData {
  const factory ContentData({
    required String name,
    required String value,
  }) = _ContentData;
}
