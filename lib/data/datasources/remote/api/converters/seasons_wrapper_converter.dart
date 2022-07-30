import 'package:hdrezka_app/data/datasources/remote/api/models/seasons_wrapper_model.dart';
import 'package:hdrezka_app/domain/converters/model_converter.dart';
import 'package:hdrezka_app/domain/entities/seasons_wrapper.dart';

class SeasonsWrapperConverter
    implements ModelConverter<SeasonsWrapperModel, SeasonsWrapper> {
  @override
  SeasonsWrapper modelToEntity(SeasonsWrapperModel model) {
    return SeasonsWrapper(
      translationId: model.translationId,
      seasons: model.seasons,
      episodes: model.episodes,
    );
  }
}
