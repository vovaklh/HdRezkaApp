import 'package:hdrezka_app/core/di/configuration.config.dart';
import 'package:hdrezka_app/core/di/locator.dart';
import 'package:injectable/injectable.dart';

@InjectableInit(
  initializerName: r'$configureDependencies',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDependencies() => $configureDependencies(locator);
