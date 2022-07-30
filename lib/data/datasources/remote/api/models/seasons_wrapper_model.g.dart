// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seasons_wrapper_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SeasonsWrapperModel _$$_SeasonsWrapperModelFromJson(
        Map<String, dynamic> json) =>
    _$_SeasonsWrapperModel(
      translationId: json['translator_id'] as String,
      seasons: Map<String, String>.from(json['seasons'] as Map),
      episodes: (json['episodes'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Map<String, String>.from(e as Map)),
      ),
    );

Map<String, dynamic> _$$_SeasonsWrapperModelToJson(
        _$_SeasonsWrapperModel instance) =>
    <String, dynamic>{
      'translator_id': instance.translationId,
      'seasons': instance.seasons,
      'episodes': instance.episodes,
    };
