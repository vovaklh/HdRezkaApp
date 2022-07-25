abstract class MyPlatform {
  static const tvMode = String.fromEnvironment("TV_MODE");

  static bool get isTvMode => tvMode == "ON";
}
