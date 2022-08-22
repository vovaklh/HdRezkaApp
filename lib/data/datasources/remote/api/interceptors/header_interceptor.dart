import 'package:dio/dio.dart';
import 'package:hdrezka_app/core/di/locator.dart';
import 'package:hdrezka_app/data/datasources/local/shared_prefs.dart';

class HeaderInterceptor extends Interceptor {
  final _sharedPrefs = locator<SharedPrefs>();

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    String mirror = _sharedPrefs.getMirror();
    options.headers["mirror"] = mirror;

    handler.next(options);
  }
}
