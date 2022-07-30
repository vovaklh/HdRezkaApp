part of 'tv_series_bloc.dart';

@freezed
class TvSeriesEvent with _$TvSeriesEvent {
  const factory TvSeriesEvent.getSeasons(
    String url, [
    String? translationId,
  ]) = GetTvSeriesSeasonsEvent;
}
