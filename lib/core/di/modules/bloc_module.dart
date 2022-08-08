import 'package:hdrezka_app/domain/repositories/content_repository.dart';
import 'package:hdrezka_app/presentation/blocs/content_bloc/content_bloc.dart';
import 'package:hdrezka_app/presentation/blocs/movie_bloc/movie_bloc.dart';
import 'package:hdrezka_app/presentation/blocs/search_bloc.dart/search_bloc.dart';
import 'package:hdrezka_app/presentation/blocs/series_bloc/tv_series_bloc.dart';
import 'package:hdrezka_app/presentation/blocs/video_bloc/video_bloc.dart';
import 'package:injectable/injectable.dart';

@module
abstract class BlocModule {
  @factoryMethod
  ContentBloc contentBloc(
    ContentRepository contentRepository,
  ) {
    return ContentBloc(
      contentRepository: contentRepository,
    );
  }

  @factoryMethod
  MovieBloc movieBloc(
    ContentRepository contentRepository,
  ) {
    return MovieBloc(
      contentRepository: contentRepository,
    );
  }

  @factoryMethod
  TvSeriesBloc tvSeriesBloc(
    ContentRepository contentRepository,
  ) {
    return TvSeriesBloc(
      contentRepository: contentRepository,
    );
  }

  @factoryMethod
  VideoBloc videoBloc(
    ContentRepository contentRepository,
  ) {
    return VideoBloc(
      contentRepository: contentRepository,
    );
  }

  @factoryMethod
  SearchBloc searchBloc(
    ContentRepository contentRepository,
  ) {
    return SearchBloc(
      contentRepository: contentRepository,
    );
  }
}
