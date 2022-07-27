import 'package:hdrezka_app/domain/repositories/content_repository.dart';
import 'package:hdrezka_app/presentation/blocs/content_bloc/content_bloc.dart';
import 'package:hdrezka_app/presentation/blocs/content_details_bloc/content_details_bloc.dart';
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
  ContentDetailsBloc contentDetailsBloc(
    ContentRepository contentRepository,
  ) {
    return ContentDetailsBloc(
      contentRepository: contentRepository,
    );
  }
}
