part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.search(
    String query,
    int page,
  ) = ContentSearchEvent;
  const factory SearchEvent.reset() = ResetSearchEvent;
}
