part of 'movie_cubit.dart';

@freezed
class MovieState with _$MovieState {
  const factory MovieState.initial() = _MovieInitialState;
  const factory MovieState.loading() = _MovieLoadingState;
  const factory MovieState.error(Object exception) = _MovieErrorState;
  const factory MovieState.success(
    Map<String, String> translations,
  ) = _MovieSuccessState;
}
