part of 'movie_bloc.dart';

@freezed
class MovieEvent with _$MovieEvent {
  const factory MovieEvent.getTranslations(
    String url,
  ) = GetMovieTranslationsEvent;
  const factory MovieEvent.getVideos(
    String url,
    String translationId,
  ) = GetMovieVideosEvent;
}
