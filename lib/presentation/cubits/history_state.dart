part of 'history_cubit.dart';

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState.initial() = _HistoryInitialState;
  const factory HistoryState.loading() = _HistoryLoadingState;
  const factory HistoryState.error(Object exception) = _HistoryErrorState;
  const factory HistoryState.success(
    List<Content> content,
  ) = _HistorySuccessState;
}
