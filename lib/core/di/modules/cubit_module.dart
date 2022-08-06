import 'package:hdrezka_app/domain/repositories/history_repository.dart';
import 'package:hdrezka_app/presentation/cubits/history_cubit.dart';
import 'package:injectable/injectable.dart';

@module
abstract class CubitModule {
  @factoryMethod
  HistoryCubit historyCybit(HistoryRepository historyRepository) {
    return HistoryCubit(historyRepository: historyRepository);
  }
}
