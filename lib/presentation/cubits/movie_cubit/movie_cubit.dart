import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hdrezka_app/domain/repositories/content_repository.dart';

part 'movie_cubit.freezed.dart';
part 'movie_state.dart';

class MovieCubit extends Cubit<MovieState> {
  final ContentRepository contentRepository;

  MovieCubit({required this.contentRepository})
      : super(const MovieState.initial());

  Future<void> getTranslations(String url) async {
    try {
      final movieTranslations =
          await contentRepository.getContentTranslations(url);

      emit(MovieState.success(movieTranslations));
    } catch (exception) {
      emit(MovieState.error(exception));
    }
  }
}
