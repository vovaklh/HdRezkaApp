import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hdrezka_app/l10n/app_locale.dart';
import 'package:hdrezka_app/l10n/l10n.dart';
import 'package:hdrezka_app/presentation/pages/content_page.dart';
import 'package:hdrezka_app/presentation/redux/app_state.dart';
import 'package:hdrezka_app/presentation/themes/theme.dart';

class Application extends StatelessWidget {
  final Store<AppState> store;

  const Application({required this.store, super.key});

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: StoreConnector<AppState, _ViewModel>(
        vm: () => _Factory(this),
        builder: (BuildContext context, _ViewModel vm) => Shortcuts(
          shortcuts: <LogicalKeySet, Intent>{
            LogicalKeySet(LogicalKeyboardKey.select): const ActivateIntent(),
          },
          child: MaterialApp(
            locale: vm.appLocale.locale,
            supportedLocales: L10n.all,
            debugShowCheckedModeBanner: false,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            theme: createLightTheme(),
            darkTheme: createDarkTheme(),
            themeMode: vm.themeMode,
            home: const ContentPage(),
          ),
        ),
      ),
    );
  }
}

class _Factory extends VmFactory<AppState, Application> {
  _Factory(widget) : super(widget);

  @override
  _ViewModel fromStore() => _ViewModel(
        themeMode: state.themeMode,
        appLocale: state.appLocale,
      );
}

class _ViewModel extends Vm {
  final ThemeMode themeMode;
  final AppLocale appLocale;

  _ViewModel({
    required this.themeMode,
    required this.appLocale,
  }) : super(equals: [themeMode, appLocale]);
}
