import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:useful_extensions/useful_extensions.dart';

class BlocMonitor extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    logDebug('${bloc.runtimeType} $event');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    logDebug('${bloc.runtimeType} $change');
  }
}
