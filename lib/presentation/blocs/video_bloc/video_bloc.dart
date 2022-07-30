import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hdrezka_app/domain/repositories/content_repository.dart';

part 'video_bloc.freezed.dart';
part 'video_event.dart';
part 'video_state.dart';

class VideoBloc extends Bloc<VideoEvent, VideoState> {
  final ContentRepository contentRepository;

  VideoBloc({required this.contentRepository})
      : super(const VideoState.initial()) {
    on<GetVideosEvent>(
      (event, emit) => _getVideos(event, emit),
    );
  }

  Future<void> _getVideos(GetVideosEvent event, Emitter emit) async {
    try {
      emit(const VideoState.loading());

      final seasonId = event.seasonId;
      final seriesId = event.seriesId;

      if (seasonId != null && seriesId != null) {
        final videos = await contentRepository.getTvSeriesVideos(
          event.url,
          event.translationId,
          seasonId,
          seriesId,
        );
        emit(VideoState.success(videos));
      } else {
        final videos = await contentRepository.getMovieVideos(
          event.url,
          event.translationId,
        );
        emit(VideoState.success(videos));
      }
    } catch (exception) {
      emit(VideoState.error(exception));
    }
  }
}
