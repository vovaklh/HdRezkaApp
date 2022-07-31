part of 'video_bloc.dart';

@freezed
class VideoEvent with _$VideoEvent {
  const factory VideoEvent.getVideos(
    String url,
    String translationId, [
    String? seasonId,
    String? seriesId,
  ]) = GetVideosEvent;
}
