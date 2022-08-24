// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i15;
import 'package:dio/dio.dart' as _i8;
import 'package:firebase_auth/firebase_auth.dart' as _i14;
import 'package:firebase_core/firebase_core.dart' as _i13;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/datasources/local/database/app_database.dart' as _i3;
import '../../data/datasources/local/database/daos/favorites_dao.dart' as _i9;
import '../../data/datasources/local/database/daos/history_dao.dart' as _i16;
import '../../data/datasources/local/database/db_models/content_favorite_db_model.dart'
    as _i7;
import '../../data/datasources/local/database/db_models/content_history_db_model.dart'
    as _i5;
import '../../data/datasources/local/shared_prefs.dart' as _i25;
import '../../data/datasources/remote/api/models/content_data_model.dart'
    as _i19;
import '../../data/datasources/remote/api/models/content_details_model.dart'
    as _i21;
import '../../data/datasources/remote/api/models/content_model.dart' as _i18;
import '../../data/datasources/remote/api/models/seasons_wrapper_model.dart'
    as _i23;
import '../../data/datasources/remote/api/services/content_service.dart'
    as _i28;
import '../../data/datasources/remote/firebase/models/content_fb_model.dart'
    as _i12;
import '../../domain/converters/db_converter.dart' as _i4;
import '../../domain/converters/fb_converter.dart' as _i11;
import '../../domain/converters/model_converter.dart' as _i17;
import '../../domain/entities/content.dart' as _i6;
import '../../domain/entities/content_data.dart' as _i20;
import '../../domain/entities/content_details.dart' as _i22;
import '../../domain/entities/seasons_wrapper.dart' as _i24;
import '../../domain/repositories/content_repository.dart' as _i32;
import '../../domain/repositories/favorites_repository.dart' as _i10;
import '../../domain/repositories/history_repository.dart' as _i33;
import '../../domain/repositories/settings_repository.dart' as _i31;
import '../../domain/services/auth_service.dart' as _i26;
import '../../domain/services/history_service.dart' as _i30;
import '../../presentation/blocs/content_bloc/content_bloc.dart' as _i40;
import '../../presentation/blocs/movie_bloc/movie_bloc.dart' as _i34;
import '../../presentation/blocs/search_bloc.dart/search_bloc.dart' as _i35;
import '../../presentation/blocs/series_bloc/tv_series_bloc.dart' as _i37;
import '../../presentation/blocs/video_bloc/video_bloc.dart' as _i38;
import '../../presentation/cubits/categories_cubit/categories_cubit.dart'
    as _i39;
import '../../presentation/cubits/content_details_cubit/content_details_cubit.dart'
    as _i41;
import '../../presentation/cubits/favorites_cubit.dart/favorites_cubit.dart'
    as _i29;
import '../../presentation/cubits/history_cubit/history_cubit.dart' as _i42;
import '../../presentation/cubits/settings_cubit.dart/settings_cubit.dart'
    as _i36;
import 'modules/api_module.dart' as _i45;
import 'modules/bloc_module.dart' as _i50;
import 'modules/converter_module.dart' as _i44;
import 'modules/cubit_module.dart' as _i49;
import 'modules/db_module.dart' as _i43;
import 'modules/firebase_module.dart' as _i47;
import 'modules/repository_module.dart' as _i46;
import 'modules/services_module.dart' as _i27;
import 'modules/storage_module.dart'
    as _i48; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i11.FbConverter<_i12.ContentFbModel, _i6.Content>>(
      () => converterModule.contentFbConverter());
  await gh.lazySingletonAsync<_i13.FirebaseApp>(
      () => firebaseModule.firebaseApp(),
      preResolve: true);
  gh.lazySingleton<_i14.FirebaseAuth>(
      () => firebaseModule.firebaseAuth(get<_i13.FirebaseApp>()));
  gh.lazySingleton<_i15.FirebaseFirestore>(
      () => firebaseModule.firebaseFirestore(get<_i13.FirebaseApp>()));
  gh.lazySingleton<_i16.HistoryDao>(
      () => dbModule.historyDao(get<_i3.AppDatabase>()));
  gh.lazySingleton<_i17.ModelConverter<_i18.ContentModel, _i6.Content>>(
      () => converterModule.contentConveter());
  gh.lazySingleton<
          _i17.ModelConverter<_i19.ContentDataModel, _i20.ContentData>>(
      () => converterModule.contentDataConveter());
  gh.lazySingleton<
          _i17.ModelConverter<_i21.ContentDetailsModel, _i22.ContentDetails>>(
      () => converterModule.contentDetailsConveter(
          get<_i17.ModelConverter<_i19.ContentDataModel, _i20.ContentData>>()));
  gh.lazySingleton<
          _i17.ModelConverter<_i23.SeasonsWrapperModel, _i24.SeasonsWrapper>>(
      () => converterModule.seasonsWrapperConverter());
  await gh.lazySingletonAsync<_i25.SharedPrefs>(
      () => storageModule.sharedPrefs(),
      preResolve: true);
  gh.factory<String>(() => apiModule.baseDevUrl, instanceName: 'BaseUrl');
  await gh.lazySingletonAsync<_i26.AuthService>(
      () => servicesModule.authService(
          get<_i14.FirebaseAuth>(), get<_i15.FirebaseFirestore>()),
      preResolve: true,
      dispose: _i27.disposeAuthService);
  gh.lazySingleton<_i28.ContentService>(() => apiModule.contentService(
      get<_i8.Dio>(), get<String>(instanceName: 'BaseUrl')));
  gh.factory<_i29.FavoritesCubit>(
      () => cubitModule.favoritesCubit(get<_i10.FavoritesRepository>()));
  gh.lazySingleton<_i30.HistoryService>(
      () => servicesModule.historyService(
          get<_i15.FirebaseFirestore>(),
          get<_i26.AuthService>(),
          get<_i11.FbConverter<_i12.ContentFbModel, _i6.Content>>()),
      dispose: _i27.disposeHistoryService);
  await gh.lazySingletonAsync<_i31.SettingsRepository>(
      () => repositoryModule.settingsRepository(
          get<_i26.AuthService>(), get<_i25.SharedPrefs>()),
      preResolve: true);
  gh.lazySingleton<
      _i32
          .ContentRepository>(() => repositoryModule.contentRepository(
      get<_i28.ContentService>(),
      get<_i17.ModelConverter<_i18.ContentModel, _i6.Content>>(),
      get<_i17.ModelConverter<_i21.ContentDetailsModel, _i22.ContentDetails>>(),
      get<
          _i17.ModelConverter<_i23.SeasonsWrapperModel,
              _i24.SeasonsWrapper>>()));
  gh.lazySingleton<_i33.HistoryRepository>(
      () => repositoryModule.historyRepository(get<_i30.HistoryService>()));
  gh.factory<_i34.MovieBloc>(
      () => blocModule.movieBloc(get<_i32.ContentRepository>()));
  gh.factory<_i35.SearchBloc>(
      () => blocModule.searchBloc(get<_i32.ContentRepository>()));
  gh.factory<_i36.SettingsCubit>(
      () => cubitModule.settingsCubit(get<_i31.SettingsRepository>()));
  gh.factory<_i37.TvSeriesBloc>(
      () => blocModule.tvSeriesBloc(get<_i32.ContentRepository>()));
  gh.factory<_i38.VideoBloc>(
      () => blocModule.videoBloc(get<_i32.ContentRepository>()));
  gh.factory<_i39.CategoriesCubit>(
      () => cubitModule.categoriesCubit(get<_i32.ContentRepository>()));
  gh.factory<_i40.ContentBloc>(
      () => blocModule.contentBloc(get<_i32.ContentRepository>()));
  gh.factory<_i41.ContentDetailsCubit>(() => cubitModule.contentDetailsCubit(
      get<_i32.ContentRepository>(),
      get<_i33.HistoryRepository>(),
      get<_i10.FavoritesRepository>()));
  gh.factory<_i42.HistoryCubit>(
      () => cubitModule.historyCybit(get<_i33.HistoryRepository>()));
  return get;
}

class _$DbModule extends _i43.DbModule {}

class _$ConverterModule extends _i44.ConverterModule {}

class _$ApiModule extends _i45.ApiModule {}

class _$RepositoryModule extends _i46.RepositoryModule {}

class _$FirebaseModule extends _i47.FirebaseModule {}

class _$StorageModule extends _i48.StorageModule {}

class _$ServicesModule extends _i27.ServicesModule {}

class _$CubitModule extends _i49.CubitModule {}

class _$BlocModule extends _i50.BlocModule {}
