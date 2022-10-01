import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hdrezka_app/domain/entities/seasons_wrapper.dart';
import 'package:hdrezka_app/domain/repositories/content_repository.dart';

part 'tv_series_cubit.freezed.dart';
part 'tv_series_state.dart';

class TvSeriesCubit extends Cubit<TvSeriesState> {
  final ContentRepository contentRepository;

  TvSeriesCubit({required this.contentRepository})
      : super(const TvSeriesState.initial());

  Future<void> getTvSeriesSeasons(
    String url, [
    String? translationId,
  ]) async {
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
