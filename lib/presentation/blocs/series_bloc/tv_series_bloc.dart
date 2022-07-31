import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hdrezka_app/domain/entities/seasons_wrapper.dart';
import 'package:hdrezka_app/domain/repositories/content_repository.dart';

part 'tv_series_bloc.freezed.dart';
part 'tv_series_event.dart';
part 'tv_series_state.dart';

class TvSeriesBloc extends Bloc<TvSeriesEvent, TvSeriesState> {
  final ContentRepository contentRepository;

  TvSeriesBloc({required this.contentRepository})
      : super(const TvSeriesState.initial()) {
    on<GetTvSeriesSeasonsEvent>(
      (event, emit) =>
          _getTvSeriesSeasons(event.url, event.translationId, emit),
    );
  }

  Future<void> _getTvSeriesSeasons(
    String url,
    String? translationId,
    Emitter emit,
  ) async {
    try {
      emit(const TvSeriesState.loading());

      Map<String, String> seriesTranslations = state.maybeMap(
        success: (value) => value.translations,
        orElse: () => {},
      );
      seriesTranslations = seriesTranslations.isEmpty
          ? await contentRepository.getContentTranslations(url)
          : seriesTranslations;

      final seriesSeasons = await contentRepository.getTvSeriesSeasons(
        url,
        translationId ?? seriesTranslations.values.first,
      );

      emit(
        TvSeriesState.success(
          seriesTranslations,
          translationId ?? seriesTranslations.values.first,
          seriesSeasons,
        ),
      );
    } catch (exception) {
      emit(TvSeriesState.error(exception));
    }
  }
}
