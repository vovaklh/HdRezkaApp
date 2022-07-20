import 'package:async_redux/async_redux.dart';
import 'package:hdrezka_app/core/di/locator.dart';
import 'package:hdrezka_app/data/datasources/local/shared_prefs.dart';
import 'package:hdrezka_app/l10n/app_locale.dart';
import 'package:hdrezka_app/presentation/redux/app_state.dart';

class SetLocaleAction extends ReduxAction<AppState> {
  final AppLocale locale;

  SetLocaleAction(this.locale);

  @override
  Future<AppState> reduce() async {
    await locator<SharedPrefs>().setLocale(locale);
    return state.copyWith(appLocale: locale);
  }
}
