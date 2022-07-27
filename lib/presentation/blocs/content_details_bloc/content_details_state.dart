part of 'content_details_bloc.dart';

@freezed
class ContentDetailsState with _$ContentDetailsState {
  const factory ContentDetailsState.initial() = _ContentDetailsInitialState;
  const factory ContentDetailsState.loading() = _ContentDetailsLoadingState;
  const factory ContentDetailsState.error(Object exception) =
      _ContentDetailsErrorState;
  const factory ContentDetailsState.success(ContentDetails contentDetails) =
      _ContentDetailsSuccessState;
}
