// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i9;
import 'package:dio/dio.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i8;
import 'package:firebase_core/firebase_core.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/datasources/local/shared_prefs.dart' as _i18;
import '../../data/datasources/remote/api/models/content_data_model.dart'
    as _i12;
import '../../data/datasources/remote/api/models/content_details_model.dart'
    as _i14;
import '../../data/datasources/remote/api/models/content_model.dart' as _i11;
import '../../data/datasources/remote/api/models/seasons_wrapper_model.dart'
    as _i16;
import '../../data/datasources/remote/api/services/content_service.dart'
    as _i21;
import '../../data/datasources/remote/firebase/models/content_fb_model.dart'
    as _i5;
import '../../domain/converters/fb_converter.dart' as _i4;
import '../../domain/converters/model_converter.dart' as _i10;
import '../../domain/entities/content.dart' as _i6;
import '../../domain/entities/content_data.dart' as _i13;
import '../../domain/entities/content_details.dart' as _i15;
import '../../domain/entities/seasons_wrapper.dart' as _i17;
import '../../domain/repositories/content_repository.dart' as _i25;
import '../../domain/repositories/favorites_repository.dart' as _i26;
import '../../domain/repositories/history_repository.dart' as _i27;
import '../../domain/repositories/settings_repository.dart' as _i24;
import '../../domain/services/auth_service.dart' as _i19;
import '../../domain/services/favorites_service.dart' as _i22;
import '../../domain/services/history_service.dart' as _i23;
import '../../presentation/blocs/search_bloc.dart/search_bloc.dart' as _i29;
import '../../presentation/cubits/categories_cubit/categories_cubit.dart'
    as _i33;
import '../../presentation/cubits/content_cubit/content_cubit.dart' as _i34;
import '../../presentation/cubits/content_details_cubit/content_details_cubit.dart'
    as _i35;
import '../../presentation/cubits/favorites_cubit.dart/favorites_cubit.dart'
    as _i36;
import '../../presentation/cubits/history_cubit/history_cubit.dart' as _i37;
import '../../presentation/cubits/movie_cubit/movie_cubit.dart' as _i28;
import '../../presentation/cubits/series_cubit/tv_series_cubit.dart' as _i31;
import '../../presentation/cubits/settings_cubit.dart/settings_cubit.dart'
    as _i30;
import '../../presentation/cubits/video_cubit/video_cubit.dart' as _i32;
import 'modules/api_module.dart' as _i38;
import 'modules/bloc_module.dart' as _i44;
import 'modules/converter_module.dart' as _i39;
import 'modules/cubit_module.dart' as _i43;
import 'modules/firebase_module.dart' as _i40;
import 'modules/repository_module.dart' as _i42;
import 'modules/services_module.dart' as _i20;
import 'modules/storage_module.dart'
    as _i41; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $configureDependencies(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final apiModule = _$ApiModule();
  final converterModule = _$ConverterModule();
  final firebaseModule = _$FirebaseModule();
  final storageModule = _$StorageModule();
  final servicesModule = _$ServicesModule();
  final repositoryModule = _$RepositoryModule();
  final cubitModule = _$CubitModule();
  final blocModule = _$BlocModule();
  gh.lazySingleton<_i3.Dio>(() => apiModule.dioClient());
  gh.lazySingleton<_i4.FbConverter<_i5.ContentFbModel, _i6.Content>>(
      () => converterModule.contentFbConverter());
  await gh.lazySingletonAsync<_i7.FirebaseApp>(
    () => firebaseModule.firebaseApp(),
    preResolve: true,
  );
  gh.lazySingleton<_i8.FirebaseAuth>(
      () => firebaseModule.firebaseAuth(get<_i7.FirebaseApp>()));
  gh.lazySingleton<_i9.FirebaseFirestore>(
      () => firebaseModule.firebaseFirestore(get<_i7.FirebaseApp>()));
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
    preResolve: true,
  );
  gh.factory<String>(
    () => apiModule.baseDevUrl,
    instanceName: 'BaseUrl',
  );
  await gh.lazySingletonAsync<_i19.AuthService>(
    () => servicesModule.authService(
      get<_i8.FirebaseAuth>(),
      get<_i9.FirebaseFirestore>(),
    ),
    preResolve: true,
    dispose: _i20.disposeAuthService,
  );
  gh.lazySingleton<_i21.ContentService>(() => apiModule.contentService(
        get<_i3.Dio>(),
        get<String>(instanceName: 'BaseUrl'),
      ));
  gh.lazySingleton<_i22.FavoritesService>(
    () => servicesModule.favoritesService(
      get<_i9.FirebaseFirestore>(),
      get<_i19.AuthService>(),
      get<_i4.FbConverter<_i5.ContentFbModel, _i6.Content>>(),
    ),
    dispose: _i20.disposeFavoritesService,
  );
  gh.lazySingleton<_i23.HistoryService>(
    () => servicesModule.historyService(
      get<_i9.FirebaseFirestore>(),
      get<_i19.AuthService>(),
      get<_i4.FbConverter<_i5.ContentFbModel, _i6.Content>>(),
    ),
    dispose: _i20.disposeHistoryService,
  );
  await gh.lazySingletonAsync<_i24.SettingsRepository>(
    () => repositoryModule.settingsRepository(
      get<_i19.AuthService>(),
      get<_i18.SharedPrefs>(),
    ),
    preResolve: true,
  );
  gh.lazySingleton<_i25.ContentRepository>(
      () => repositoryModule.contentRepository(
            get<_i21.ContentService>(),
            get<_i10.ModelConverter<_i11.ContentModel, _i6.Content>>(),
            get<
                _i10.ModelConverter<_i14.ContentDetailsModel,
                    _i15.ContentDetails>>(),
            get<
                _i10.ModelConverter<_i16.SeasonsWrapperModel,
                    _i17.SeasonsWrapper>>(),
          ));
  gh.lazySingleton<_i26.FavoritesRepository>(
      () => repositoryModule.favoritesRepository(get<_i22.FavoritesService>()));
  gh.lazySingleton<_i27.HistoryRepository>(
      () => repositoryModule.historyRepository(get<_i23.HistoryService>()));
  gh.factory<_i28.MovieCubit>(
      () => cubitModule.movieCubit(get<_i25.ContentRepository>()));
  gh.factory<_i29.SearchBloc>(
      () => blocModule.searchBloc(get<_i25.ContentRepository>()));
  gh.factory<_i30.SettingsCubit>(
      () => cubitModule.settingsCubit(get<_i24.SettingsRepository>()));
  gh.factory<_i31.TvSeriesCubit>(
      () => cubitModule.tvSeriesCubit(get<_i25.ContentRepository>()));
  gh.factory<_i32.VideoCubit>(
      () => cubitModule.videoCubit(get<_i25.ContentRepository>()));
  gh.factory<_i33.CategoriesCubit>(
      () => cubitModule.categoriesCubit(get<_i25.ContentRepository>()));
  gh.factory<_i34.ContentCubit>(
      () => cubitModule.contentCubit(get<_i25.ContentRepository>()));
  gh.factory<_i35.ContentDetailsCubit>(() => cubitModule.contentDetailsCubit(
        get<_i25.ContentRepository>(),
        get<_i27.HistoryRepository>(),
        get<_i26.FavoritesRepository>(),
      ));
  gh.factory<_i36.FavoritesCubit>(
      () => cubitModule.favoritesCubit(get<_i26.FavoritesRepository>()));
  gh.factory<_i37.HistoryCubit>(
      () => cubitModule.historyCybit(get<_i27.HistoryRepository>()));
  return get;
}

class _$ApiModule extends _i38.ApiModule {}

class _$ConverterModule extends _i39.ConverterModule {}

class _$FirebaseModule extends _i40.FirebaseModule {}

class _$StorageModule extends _i41.StorageModule {}

class _$ServicesModule extends _i20.ServicesModule {}

class _$RepositoryModule extends _i42.RepositoryModule {}

class _$CubitModule extends _i43.CubitModule {}

class _$BlocModule extends _i44.BlocModule {}
