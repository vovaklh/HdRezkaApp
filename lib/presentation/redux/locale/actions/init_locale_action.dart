import 'package:async_redux/async_redux.dart';
import 'package:hdrezka_app/core/di/locator.dart';
import 'package:hdrezka_app/data/datasources/local/shared_prefs.dart';
import 'package:hdrezka_app/l10n/app_locale.dart';
import 'package:hdrezka_app/presentation/redux/app_state.dart';

class InitLocaleAction extends ReduxAction<AppState> {
  @override
  AppState reduce() {
    final locale = locator<SharedPrefs>().getLocale() ?? AppLocale.en;
    return state.copyWith(appLocale: locale);
  }
}
