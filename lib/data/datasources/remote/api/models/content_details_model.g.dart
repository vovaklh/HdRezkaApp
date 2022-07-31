// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContentDetailsModel _$$_ContentDetailsModelFromJson(
        Map<String, dynamic> json) =>
    _$_ContentDetailsModel(
      id: json['id'] as int,
      url: json['url'] as String,
      title: json['title'] as String,
      affilation: $enumDecode(_$ContentAffilationEnumMap, json['affilation']),
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      data:
          const ContentDataModelListConverter().fromJson(json['data'] as List),
    );

Map<String, dynamic> _$$_ContentDetailsModelToJson(
        _$_ContentDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'title': instance.title,
      'affilation': _$ContentAffilationEnumMap[instance.affilation]!,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'data': const ContentDataModelListConverter().toJson(instance.data),
    };

const _$ContentAffilationEnumMap = {
  ContentAffilation.movie: 'movie',
  ContentAffilation.tvSeries: 'tv_series',
};
