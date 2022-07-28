part of 'movie_bloc.dart';

@freezed
class MovieState with _$MovieState {
  const factory MovieState.initial() = _MovieInitialState;
  const factory MovieState.loading() = _MovieLoadingState;
  const factory MovieState.error(Object exception) = _MovieErrorState;
  const factory MovieState.successTranslations(
    Map<String, String> translations,
  ) = _MovieSuccessTranslationsState;
  const factory MovieState.successVideos(
    Map<String, String> videos,
  ) = _MovieSuccessVideosState;
}
