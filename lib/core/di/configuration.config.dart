// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/datasources/local/shared_prefs.dart' as _i13;
import '../../data/datasources/remote/api/models/content_data_model.dart'
    as _i7;
import '../../data/datasources/remote/api/models/content_details_model.dart'
    as _i9;
import '../../data/datasources/remote/api/models/content_model.dart' as _i5;
import '../../data/datasources/remote/api/models/seasons_wrapper_model.dart'
    as _i11;
import '../../data/datasources/remote/api/services/content_service.dart'
    as _i14;
import '../../domain/converters/model_converter.dart' as _i4;
import '../../domain/entities/content.dart' as _i6;
import '../../domain/entities/content_data.dart' as _i8;
import '../../domain/entities/content_details.dart' as _i10;
import '../../domain/entities/seasons_wrapper.dart' as _i12;
import '../../domain/repositories/content_repository.dart' as _i15;
import '../../presentation/blocs/content_bloc/content_bloc.dart' as _i19;
import '../../presentation/blocs/content_details_bloc/content_details_bloc.dart'
    as _i20;
import '../../presentation/blocs/movie_bloc/movie_bloc.dart' as _i16;
import '../../presentation/blocs/series_bloc/tv_series_bloc.dart' as _i17;
import '../../presentation/blocs/video_bloc/video_bloc.dart' as _i18;
import 'modules/api_module.dart' as _i21;
import 'modules/bloc_module.dart' as _i25;
import 'modules/converter_module.dart' as _i22;
import 'modules/repository_module.dart' as _i24;
import 'modules/storage_module.dart'
    as _i23; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $configureDependencies(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final apiModule = _$ApiModule();
  final converterModule = _$ConverterModule();
  final storageModule = _$StorageModule();
  final repositoryModule = _$RepositoryModule();
  final blocModule = _$BlocModule();
  gh.lazySingleton<_i3.Dio>(() => apiModule.dioClient());
  gh.lazySingleton<_i4.ModelConverter<_i5.ContentModel, _i6.Content>>(
      () => converterModule.contentConveter());
  gh.lazySingleton<_i4.ModelConverter<_i7.ContentDataModel, _i8.ContentData>>(
      () => converterModule.contentDataConveter());
  gh.lazySingleton<
          _i4.ModelConverter<_i9.ContentDetailsModel, _i10.ContentDetails>>(
      () => converterModule.contentDetailsConveter(
          get<_i4.ModelConverter<_i7.ContentDataModel, _i8.ContentData>>()));
  gh.lazySingleton<
          _i4.ModelConverter<_i11.SeasonsWrapperModel, _i12.SeasonsWrapper>>(
      () => converterModule.seasonsWrapperConverter());
  await gh.lazySingletonAsync<_i13.SharedPrefs>(
      () => storageModule.sharedPrefs(),
      preResolve: true);
  gh.factory<String>(() => apiModule.baseDevUrl, instanceName: 'BaseUrl');
  gh.lazySingleton<_i14.ContentService>(() => apiModule.contentService(
      get<_i3.Dio>(), get<String>(instanceName: 'BaseUrl')));
  gh.lazySingleton<
      _i15
          .ContentRepository>(() => repositoryModule.contentRepository(
      get<_i14.ContentService>(),
      get<_i4.ModelConverter<_i5.ContentModel, _i6.Content>>(),
      get<_i4.ModelConverter<_i9.ContentDetailsModel, _i10.ContentDetails>>(),
      get<
          _i4.ModelConverter<_i11.SeasonsWrapperModel,
              _i12.SeasonsWrapper>>()));
  gh.factory<_i16.MovieBloc>(
      () => blocModule.movieBloc(get<_i15.ContentRepository>()));
  gh.factory<_i17.TvSeriesBloc>(
      () => blocModule.tvSeriesBloc(get<_i15.ContentRepository>()));
  gh.factory<_i18.VideoBloc>(
      () => blocModule.videoBloc(get<_i15.ContentRepository>()));
  gh.factory<_i19.ContentBloc>(
      () => blocModule.contentBloc(get<_i15.ContentRepository>()));
  gh.factory<_i20.ContentDetailsBloc>(
      () => blocModule.contentDetailsBloc(get<_i15.ContentRepository>()));
  return get;
}

class _$ApiModule extends _i21.ApiModule {}

class _$ConverterModule extends _i22.ConverterModule {}

class _$StorageModule extends _i23.StorageModule {}

class _$RepositoryModule extends _i24.RepositoryModule {}

class _$BlocModule extends _i25.BlocModule {}
