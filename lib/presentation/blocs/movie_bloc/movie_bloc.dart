import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hdrezka_app/domain/repositories/content_repository.dart';

part 'movie_bloc.freezed.dart';
part 'movie_event.dart';
part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  final ContentRepository contentRepository;

  MovieBloc({required this.contentRepository})
      : super(const MovieState.initial()) {
    on<GetMovieTranslationsEvent>(
      (event, emit) => _getMovieTranslations(event.url, emit),
    );
    on<GetMovieVideosEvent>(
      (event, emit) => _getMovieVideos(event.url, event.translationId, emit),
    );
  }

  Future<void> _getMovieTranslations(String url, Emitter emit) async {
    try {
      final movieTranslations =
          await contentRepository.getContentTranslations(url);

      emit(MovieState.successTranslations(movieTranslations));
    } catch (exception) {
      emit(MovieState.error(exception));
    }
  }

  Future<void> _getMovieVideos(
    String url,
    String translationId,
    Emitter emit,
  ) async {
    try {
      emit(const MovieState.loading());

      final movieVideos =
          await contentRepository.getMovieVideos(url, translationId);

      emit(MovieState.successVideos(movieVideos));
    } catch (exception) {
      emit(MovieState.error(exception));
    }
  }
}
