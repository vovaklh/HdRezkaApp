part of 'content_details_bloc.dart';

@freezed
class ContentDetailsEvent with _$ContentDetailsEvent {
  const factory ContentDetailsEvent.getDetails(
    String url,
  ) = GetContentDetailsEvent;
}
