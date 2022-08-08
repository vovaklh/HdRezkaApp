part of 'favorites_cubit.dart';

@freezed
class FavoritesState with _$FavoritesState {
  const factory FavoritesState.initial() = _FavoritesInitialState;
  const factory FavoritesState.loading() = _FavoritesLoadingState;
  const factory FavoritesState.error(Object exception) = _FavoritesErrorState;
  const factory FavoritesState.success(
    List<Content> content,
  ) = _FavoritesSuccessState;
}
