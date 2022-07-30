part of 'tv_series_bloc.dart';

@freezed
class TvSeriesState with _$TvSeriesState {
  const factory TvSeriesState.initial() = _TvSeriesInitialState;
  const factory TvSeriesState.loading() = _TvSeriesLoadingState;
  const factory TvSeriesState.error(Object exception) = _TvSeriesErrorState;
  const factory TvSeriesState.success(
    Map<String, String> translations,
    String currentTranslationId,
    SeasonsWrapper seasons,
  ) = _TvSeriesSuccessState;
}
