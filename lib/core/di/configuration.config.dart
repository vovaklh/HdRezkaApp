// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i13;
import 'package:dio/dio.dart' as _i8;
import 'package:firebase_auth/firebase_auth.dart' as _i12;
import 'package:firebase_core/firebase_core.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/datasources/local/database/app_database.dart' as _i3;
import '../../data/datasources/local/database/daos/favorites_dao.dart' as _i9;
import '../../data/datasources/local/database/daos/history_dao.dart' as _i14;
import '../../data/datasources/local/database/db_models/content_favorite_db_model.dart'
    as _i7;
import '../../data/datasources/local/database/db_models/content_history_db_model.dart'
    as _i5;
import '../../data/datasources/local/shared_prefs.dart' as _i24;
import '../../data/datasources/remote/api/models/content_data_model.dart'
    as _i18;
import '../../data/datasources/remote/api/models/content_details_model.dart'
    as _i20;
import '../../data/datasources/remote/api/models/content_model.dart' as _i17;
import '../../data/datasources/remote/api/models/seasons_wrapper_model.dart'
    as _i22;
import '../../data/datasources/remote/api/services/content_service.dart'
    as _i26;
import '../../domain/converters/db_converter.dart' as _i4;
import '../../domain/converters/model_converter.dart' as _i16;
import '../../domain/entities/content.dart' as _i6;
import '../../domain/entities/content_data.dart' as _i19;
import '../../domain/entities/content_details.dart' as _i21;
import '../../domain/entities/seasons_wrapper.dart' as _i23;
import '../../domain/repositories/content_repository.dart' as _i30;
import '../../domain/repositories/favorites_repository.dart' as _i10;
import '../../domain/repositories/history_repository.dart' as _i15;
import '../../domain/repositories/settings_repository.dart' as _i29;
import '../../domain/services/auth_service.dart' as _i25;
import '../../presentation/blocs/content_bloc/content_bloc.dart' as _i37;
import '../../presentation/blocs/movie_bloc/movie_bloc.dart' as _i31;
import '../../presentation/blocs/search_bloc.dart/search_bloc.dart' as _i32;
import '../../presentation/blocs/series_bloc/tv_series_bloc.dart' as _i34;
import '../../presentation/blocs/video_bloc/video_bloc.dart' as _i35;
import '../../presentation/cubits/categories_cubit/categories_cubit.dart'
    as _i36;
import '../../presentation/cubits/content_details_cubit/content_details_cubit.dart'
    as _i38;
import '../../presentation/cubits/favorites_cubit.dart/favorites_cubit.dart'
    as _i27;
import '../../presentation/cubits/history_cubit/history_cubit.dart' as _i28;
import '../../presentation/cubits/settings_cubit.dart/settings_cubit.dart'
    as _i33;
import 'modules/api_module.dart' as _i41;
import 'modules/bloc_module.dart' as _i47;
import 'modules/converter_module.dart' as _i40;
import 'modules/cubit_module.dart' as _i46;
import 'modules/db_module.dart' as _i39;
import 'modules/firebase_module.dart' as _i43;
import 'modules/repository_module.dart' as _i42;
import 'modules/services_module.dart' as _i45;
import 'modules/storage_module.dart'
    as _i44; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $configureDependencies(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dbModule = _$DbModule();
  final converterModule = _$ConverterModule();
  final apiModule = _$ApiModule();
  final repositoryModule = _$RepositoryModule();
  final firebaseModule = _$FirebaseModule();
  final storageModule = _$StorageModule();
  final servicesModule = _$ServicesModule();
  final cubitModule = _$CubitModule();
  final blocModule = _$BlocModule();
  await gh.lazySingletonAsync<_i3.AppDatabase>(() => dbModule.database(),
      preResolve: true);
  gh.lazySingleton<_i4.DbConverter<_i5.ContentHistoryDbModel, _i6.Content>>(
      () => converterModule.contentHistoryConveter());
  gh.lazySingleton<_i4.DbConverter<_i7.ContentFavoriteDbModel, _i6.Content>>(
      () => converterModule.contentFavoriteConveter());
  gh.lazySingleton<_i8.Dio>(() => apiModule.dioClient());
  gh.lazySingleton<_i9.FavoritesDao>(
      () => dbModule.favoritesDao(get<_i3.AppDatabase>()));
  gh.lazySingleton<_i10.FavoritesRepository>(() =>
      repositoryModule.favoritesRepository(
          get<_i4.DbConverter<_i7.ContentFavoriteDbModel, _i6.Content>>(),
          get<_i9.FavoritesDao>()));
  await gh.lazySingletonAsync<_i11.FirebaseApp>(
      () => firebaseModule.firebaseApp(),
      preResolve: true);
  gh.lazySingleton<_i12.FirebaseAuth>(
      () => firebaseModule.firebaseAuth(get<_i11.FirebaseApp>()));
  gh.lazySingleton<_i13.FirebaseFirestore>(
      () => firebaseModule.firebaseFirestore(get<_i11.FirebaseApp>()));
  gh.lazySingleton<_i14.HistoryDao>(
      () => dbModule.historyDao(get<_i3.AppDatabase>()));
  gh.lazySingleton<_i15.HistoryRepository>(() =>
      repositoryModule.historyRepository(
          get<_i4.DbConverter<_i5.ContentHistoryDbModel, _i6.Content>>(),
          get<_i14.HistoryDao>()));
  gh.lazySingleton<_i16.ModelConverter<_i17.ContentModel, _i6.Content>>(
      () => converterModule.contentConveter());
  gh.lazySingleton<
          _i16.ModelConverter<_i18.ContentDataModel, _i19.ContentData>>(
      () => converterModule.contentDataConveter());
  gh.lazySingleton<
          _i16.ModelConverter<_i20.ContentDetailsModel, _i21.ContentDetails>>(
      () => converterModule.contentDetailsConveter(
          get<_i16.ModelConverter<_i18.ContentDataModel, _i19.ContentData>>()));
  gh.lazySingleton<
          _i16.ModelConverter<_i22.SeasonsWrapperModel, _i23.SeasonsWrapper>>(
      () => converterModule.seasonsWrapperConverter());
  await gh.lazySingletonAsync<_i24.SharedPrefs>(
      () => storageModule.sharedPrefs(),
      preResolve: true);
  gh.factory<String>(() => apiModule.baseDevUrl, instanceName: 'BaseUrl');
  await gh.lazySingletonAsync<_i25.AuthService>(
      () => servicesModule.authService(
          get<_i12.FirebaseAuth>(), get<_i13.FirebaseFirestore>()),
      preResolve: true);
  gh.lazySingleton<_i26.ContentService>(() => apiModule.contentService(
      get<_i8.Dio>(), get<String>(instanceName: 'BaseUrl')));
  gh.factory<_i27.FavoritesCubit>(
      () => cubitModule.favoritesCubit(get<_i10.FavoritesRepository>()));
  gh.factory<_i28.HistoryCubit>(
      () => cubitModule.historyCybit(get<_i15.HistoryRepository>()));
  await gh.lazySingletonAsync<_i29.SettingsRepository>(
      () => repositoryModule.settingsRepository(
          get<_i25.AuthService>(), get<_i24.SharedPrefs>()),
      preResolve: true);
  gh.lazySingleton<
      _i30
          .ContentRepository>(() => repositoryModule.contentRepository(
      get<_i26.ContentService>(),
      get<_i16.ModelConverter<_i17.ContentModel, _i6.Content>>(),
      get<_i16.ModelConverter<_i20.ContentDetailsModel, _i21.ContentDetails>>(),
      get<
          _i16.ModelConverter<_i22.SeasonsWrapperModel,
              _i23.SeasonsWrapper>>()));
  gh.factory<_i31.MovieBloc>(
      () => blocModule.movieBloc(get<_i30.ContentRepository>()));
  gh.factory<_i32.SearchBloc>(
      () => blocModule.searchBloc(get<_i30.ContentRepository>()));
  gh.factory<_i33.SettingsCubit>(
      () => cubitModule.settingsCubit(get<_i29.SettingsRepository>()));
  gh.factory<_i34.TvSeriesBloc>(
      () => blocModule.tvSeriesBloc(get<_i30.ContentRepository>()));
  gh.factory<_i35.VideoBloc>(
      () => blocModule.videoBloc(get<_i30.ContentRepository>()));
  gh.factory<_i36.CategoriesCubit>(
      () => cubitModule.categoriesCubit(get<_i30.ContentRepository>()));
  gh.factory<_i37.ContentBloc>(
      () => blocModule.contentBloc(get<_i30.ContentRepository>()));
  gh.factory<_i38.ContentDetailsCubit>(() => cubitModule.contentDetailsCubit(
      get<_i30.ContentRepository>(),
      get<_i15.HistoryRepository>(),
      get<_i10.FavoritesRepository>()));
  return get;
}

class _$DbModule extends _i39.DbModule {}

class _$ConverterModule extends _i40.ConverterModule {}

class _$ApiModule extends _i41.ApiModule {}

class _$RepositoryModule extends _i42.RepositoryModule {}

class _$FirebaseModule extends _i43.FirebaseModule {}

class _$StorageModule extends _i44.StorageModule {}

class _$ServicesModule extends _i45.ServicesModule {}

class _$CubitModule extends _i46.CubitModule {}

class _$BlocModule extends _i47.BlocModule {}
