import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hdrezka_app/data/datasources/local/enums/content_filter.dart';
import 'package:hdrezka_app/data/datasources/local/enums/content_type.dart';

part 'content_filter_wrapper.freezed.dart';
part 'content_filter_wrapper.g.dart';

@freezed
class ContentFilterWrapper with _$ContentFilterWrapper {
  const factory ContentFilterWrapper({
    required ContentFilter filter,
    required ContentType type,
  }) = _ContentFilterWrapper;

  factory ContentFilterWrapper.initial() => const ContentFilterWrapper(
        filter: ContentFilter.watching,
        type: ContentType.all,
      );

  factory ContentFilterWrapper.fromJson(Map<String, dynamic> json) =>
      _$ContentFilterWrapperFromJson(json);
}
