part of 'content_bloc.dart';

@freezed
class ContentEvent with _$ContentEvent {
  const factory ContentEvent.getContent(
    int page,
    ContentFilter filter,
    ContentType type,
  ) = GetContentEvent;
}
