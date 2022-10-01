part of 'video_cubit.dart';

@freezed
class VideoState with _$VideoState {
  const factory VideoState.initial() = _VideoInitialState;
  const factory VideoState.loading() = _VideoLoadingState;
  const factory VideoState.error(Object exception) = _VideoErrorState;
  const factory VideoState.success(
    Map<String, String> videos,
  ) = _VideoSuccessState;
}
