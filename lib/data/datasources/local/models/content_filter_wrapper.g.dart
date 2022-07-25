// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_filter_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContentFilterWrapper _$$_ContentFilterWrapperFromJson(
        Map<String, dynamic> json) =>
    _$_ContentFilterWrapper(
      filter: $enumDecode(_$ContentFilterEnumMap, json['filter']),
      type: $enumDecode(_$ContentTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_ContentFilterWrapperToJson(
        _$_ContentFilterWrapper instance) =>
    <String, dynamic>{
      'filter': _$ContentFilterEnumMap[instance.filter]!,
      'type': _$ContentTypeEnumMap[instance.type]!,
    };

const _$ContentFilterEnumMap = {
  ContentFilter.last: 'last',
  ContentFilter.popular: 'popular',
  ContentFilter.soon: 'soon',
  ContentFilter.watching: 'watching',
};

const _$ContentTypeEnumMap = {
  ContentType.all: 'all',
  ContentType.film: 'film',
  ContentType.series: 'series',
  ContentType.cartoon: 'cartoon',
  ContentType.anime: 'anime',
};
