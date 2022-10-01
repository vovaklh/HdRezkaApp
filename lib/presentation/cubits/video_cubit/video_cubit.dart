import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hdrezka_app/domain/repositories/content_repository.dart';

part 'video_cubit.freezed.dart';
part 'video_state.dart';

class VideoCubit extends Cubit<VideoState> {
  final ContentRepository contentRepository;

  VideoCubit({required this.contentRepository})
      : super(const VideoState.initial());

  Future<void> getVideos(
    String url,
    String translationId, [
    String? seasonId,
    String? seriesId,
  ]) async {
    try {
      emit(const VideoState.loading());

      if (seasonId != null && seriesId != null) {
        final videos = await contentRepository.getTvSeriesVideos(
          url,
          translationId,
          seasonId,
          seriesId,
        );
        emit(VideoState.success(videos));
      } else {
        final videos = await contentRepository.getMovieVideos(
          url,
          translationId,
        );
        emit(VideoState.success(videos));
      }
    } catch (exception) {
      emit(VideoState.error(exception));
    }
  }
}
