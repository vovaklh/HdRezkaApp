// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContentModel _$$_ContentModelFromJson(Map<String, dynamic> json) =>
    _$_ContentModel(
      id: json['id'] as int,
      mirrorLessUrl: json['mirrorLessUrl'] as String,
      type: json['type'] as String,
      title: json['title'] as String,
      shortInfo: json['shortInfo'] as String,
      imageUrl: json['imageUrl'] as String,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$_ContentModelToJson(_$_ContentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mirrorLessUrl': instance.mirrorLessUrl,
      'type': instance.type,
      'title': instance.title,
      'shortInfo': instance.shortInfo,
      'imageUrl': instance.imageUrl,
      'status': instance.status,
    };
