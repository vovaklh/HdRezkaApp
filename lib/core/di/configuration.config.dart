// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/datasources/local/database/app_database.dart' as _i3;
import '../../data/datasources/local/database/daos/history_dao.dart' as _i8;
import '../../data/datasources/local/database/db_models/content_history_db_model.dart'
    as _i5;
import '../../data/datasources/local/shared_prefs.dart' as _i18;
import '../../data/datasources/remote/api/models/content_data_model.dart'
    as _i12;
import '../../data/datasources/remote/api/models/content_details_model.dart'
    as _i14;
import '../../data/datasources/remote/api/models/content_model.dart' as _i11;
import '../../data/datasources/remote/api/models/seasons_wrapper_model.dart'
    as _i16;
import '../../data/datasources/remote/api/services/content_service.dart'
    as _i19;
import '../../domain/converters/db_converter.dart' as _i4;
import '../../domain/converters/model_converter.dart' as _i10;
import '../../domain/entities/content.dart' as _i6;
import '../../domain/entities/content_data.dart' as _i13;
import '../../domain/entities/content_details.dart' as _i15;
import '../../domain/entities/seasons_wrapper.dart' as _i17;
import '../../domain/repositories/content_repository.dart' as _i21;
import '../../domain/repositories/history_repository.dart' as _i9;
import '../../presentation/blocs/content_bloc/content_bloc.dart' as _i26;
import '../../presentation/blocs/content_details_bloc/content_details_bloc.dart'
    as _i27;
import '../../presentation/blocs/movie_bloc/movie_bloc.dart' as _i22;
import '../../presentation/blocs/search_bloc.dart/search_bloc.dart' as _i23;
import '../../presentation/blocs/series_bloc/tv_series_bloc.dart' as _i24;
import '../../presentation/blocs/video_bloc/video_bloc.dart' as _i25;
import '../../presentation/cubits/history_cubit.dart' as _i20;
import 'modules/api_module.dart' as _i30;
import 'modules/bloc_module.dart' as _i34;
import 'modules/converter_module.dart' as _i29;
import 'modules/cubit_module.dart' as _i33;
import 'modules/db_module.dart' as _i28;
import 'modules/repository_module.dart' as _i31;
import 'modules/storage_module.dart'
    as _i32; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $configureDependencies(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dbModule = _$DbModule();
  final converterModule = _$ConverterModule();
  final apiModule = _$ApiModule();
  final repositoryModule = _$RepositoryModule();
  final storageModule = _$StorageModule();
  final cubitModule = _$CubitModule();
  final blocModule = _$BlocModule();
  await gh.lazySingletonAsync<_i3.AppDatabase>(() => dbModule.database(),
      preResolve: true);
  gh.lazySingleton<_i4.DbConverter<_i5.ContentHistoryDbModel, _i6.Content>>(
      () => converterModule.contentHistoryConveter());
  gh.lazySingleton<_i7.Dio>(() => apiModule.dioClient());
  gh.lazySingleton<_i8.HistoryDao>(
      () => dbModule.historyDao(get<_i3.AppDatabase>()));
  gh.lazySingleton<_i9.HistoryRepository>(() =>
      repositoryModule.historyRepository(
          get<_i4.DbConverter<_i5.ContentHistoryDbModel, _i6.Content>>(),
          get<_i8.HistoryDao>()));
  gh.lazySingleton<_i10.ModelConverter<_i11.ContentModel, _i6.Content>>(
      () => converterModule.contentConveter());
  gh.lazySingleton<
          _i10.ModelConverter<_i12.ContentDataModel, _i13.ContentData>>(
      () => converterModule.contentDataConveter());
  gh.lazySingleton<
          _i10.ModelConverter<_i14.ContentDetailsModel, _i15.ContentDetails>>(
      () => converterModule.contentDetailsConveter(
          get<_i10.ModelConverter<_i12.ContentDataModel, _i13.ContentData>>()));
  gh.lazySingleton<
          _i10.ModelConverter<_i16.SeasonsWrapperModel, _i17.SeasonsWrapper>>(
      () => converterModule.seasonsWrapperConverter());
  await gh.lazySingletonAsync<_i18.SharedPrefs>(
      () => storageModule.sharedPrefs(),
      preResolve: true);
  gh.factory<String>(() => apiModule.baseDevUrl, instanceName: 'BaseUrl');
  gh.lazySingleton<_i19.ContentService>(() => apiModule.contentService(
      get<_i7.Dio>(), get<String>(instanceName: 'BaseUrl')));
  gh.factory<_i20.HistoryCubit>(
      () => cubitModule.historyCybit(get<_i9.HistoryRepository>()));
  gh.lazySingleton<
      _i21
          .ContentRepository>(() => repositoryModule.contentRepository(
      get<_i19.ContentService>(),
      get<_i10.ModelConverter<_i11.ContentModel, _i6.Content>>(),
      get<_i10.ModelConverter<_i14.ContentDetailsModel, _i15.ContentDetails>>(),
      get<
          _i10.ModelConverter<_i16.SeasonsWrapperModel,
              _i17.SeasonsWrapper>>()));
  gh.factory<_i22.MovieBloc>(
      () => blocModule.movieBloc(get<_i21.ContentRepository>()));
  gh.factory<_i23.SearchBloc>(
      () => blocModule.searchBloc(get<_i21.ContentRepository>()));
  gh.factory<_i24.TvSeriesBloc>(
      () => blocModule.tvSeriesBloc(get<_i21.ContentRepository>()));
  gh.factory<_i25.VideoBloc>(
      () => blocModule.videoBloc(get<_i21.ContentRepository>()));
  gh.factory<_i26.ContentBloc>(
      () => blocModule.contentBloc(get<_i21.ContentRepository>()));
  gh.factory<_i27.ContentDetailsBloc>(() => blocModule.contentDetailsBloc(
      get<_i21.ContentRepository>(), get<_i9.HistoryRepository>()));
  return get;
}

class _$DbModule extends _i28.DbModule {}

class _$ConverterModule extends _i29.ConverterModule {}

class _$ApiModule extends _i30.ApiModule {}

class _$RepositoryModule extends _i31.RepositoryModule {}

class _$StorageModule extends _i32.StorageModule {}

class _$CubitModule extends _i33.CubitModule {}

class _$BlocModule extends _i34.BlocModule {}
