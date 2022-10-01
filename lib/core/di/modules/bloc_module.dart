import 'package:hdrezka_app/domain/repositories/content_repository.dart';
import 'package:hdrezka_app/presentation/blocs/search_bloc.dart/search_bloc.dart';
import 'package:injectable/injectable.dart';

@module
abstract class BlocModule {
  @factoryMethod
  SearchBloc searchBloc(
    ContentRepository contentRepository,
  ) {
    return SearchBloc(
      contentRepository: contentRepository,
    );
  }
}
