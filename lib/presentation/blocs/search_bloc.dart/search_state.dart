part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _SearchInitialState;
  const factory SearchState.loading() = _SearchLoadingState;
  const factory SearchState.error(int page, Object exception) =
      _SearchErrorState;
  const factory SearchState.success(
    String query,
    int page,
    int? nextPage,
    List<Content> content,
  ) = _SearchSuccessState;
}
