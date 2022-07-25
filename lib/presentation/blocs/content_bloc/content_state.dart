part of 'content_bloc.dart';

@freezed
class ContentState with _$ContentState {
  const factory ContentState.initial() = _ContentInitialState;
  const factory ContentState.loading() = _ContentLoadingState;
  const factory ContentState.error(Object exception) = _ContentErrorState;
  const factory ContentState.success(
    List<Content> content,
    bool isLastPage,
  ) = _ContentSuccessState;
}
