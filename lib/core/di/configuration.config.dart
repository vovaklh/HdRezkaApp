// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/datasources/local/shared_prefs.dart' as _i7;
import '../../data/datasources/remote/api/models/content_model.dart' as _i5;
import '../../data/datasources/remote/api/services/content_service.dart' as _i8;
import '../../domain/converters/model_converter.dart' as _i4;
import '../../domain/entities/content.dart' as _i6;
import '../../domain/repositories/content_repository.dart' as _i9;
import '../../presentation/blocs/content_bloc/content_bloc.dart' as _i10;
import 'modules/api_module.dart' as _i11;
import 'modules/bloc_module.dart' as _i15;
import 'modules/converter_module.dart' as _i12;
import 'modules/repository_module.dart' as _i14;
import 'modules/storage_module.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

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
  await gh.lazySingletonAsync<_i7.SharedPrefs>(
      () => storageModule.sharedPrefs(),
      preResolve: true);
  gh.factory<String>(() => apiModule.baseDevUrl, instanceName: 'BaseUrl');
  gh.lazySingleton<_i8.ContentService>(() => apiModule.contentService(
      get<_i3.Dio>(), get<String>(instanceName: 'BaseUrl')));
  gh.lazySingleton<_i9.ContentRepository>(() =>
      repositoryModule.contentRepository(get<_i8.ContentService>(),
          get<_i4.ModelConverter<_i5.ContentModel, _i6.Content>>()));
  gh.factory<_i10.ContentBloc>(
      () => blocModule.contentBloc(get<_i9.ContentRepository>()));
  return get;
}

class _$ApiModule extends _i11.ApiModule {}

class _$ConverterModule extends _i12.ConverterModule {}

class _$StorageModule extends _i13.StorageModule {}

class _$RepositoryModule extends _i14.RepositoryModule {}

class _$BlocModule extends _i15.BlocModule {}
