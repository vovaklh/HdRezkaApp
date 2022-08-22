import 'package:flutter/material.dart';
import 'package:hdrezka_app/core/application.dart';
import 'package:hdrezka_app/core/di/configuration.dart';
import 'package:hdrezka_app/presentation/blocs/bloc_monitor.dart';
import 'package:hdrezka_app/presentation/redux/locale/actions/init_locale_action.dart';
import 'package:hdrezka_app/presentation/redux/store.dart';
import 'package:hdrezka_app/presentation/redux/theme/actions/init_theme_action.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  final store = newStore();
  store.dispatch(InitThemeAction());
  store.dispatch(InitLocaleAction());
  Bloc.observer = BlocMonitor();
  runApp(Application(store: store));
}
