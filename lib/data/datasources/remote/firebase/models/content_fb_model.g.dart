// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_fb_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContentFbModel _$$_ContentFbModelFromJson(Map<String, dynamic> json) =>
    _$_ContentFbModel(
      id: json['id'] as int,
      title: json['title'] as String,
      shortInfo: json['shortInfo'] as String,
      mirrorLessUrl: json['mirrorLessUrl'] as String,
      imageUrl: json['imageUrl'] as String,
      type: json['type'] as String,
      status: json['status'] as String?,
      addedToHistoryAt:
          const NullableDateTimeConverter().fromJson(json['addedToHistoryAt']),
      addedToFavoritesAt: const NullableDateTimeConverter()
          .fromJson(json['addedToFavoritesAt']),
    );

Map<String, dynamic> _$$_ContentFbModelToJson(_$_ContentFbModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'shortInfo': instance.shortInfo,
      'mirrorLessUrl': instance.mirrorLessUrl,
      'imageUrl': instance.imageUrl,
      'type': instance.type,
      'status': instance.status,
      'addedToHistoryAt':
          const NullableDateTimeConverter().toJson(instance.addedToHistoryAt),
      'addedToFavoritesAt':
          const NullableDateTimeConverter().toJson(instance.addedToFavoritesAt),
    };
