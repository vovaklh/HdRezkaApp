import 'package:flutter/material.dart';
import 'package:hdrezka_app/core/utils/utils/my_platform.dart';

abstract class PlatformWidget {
  static Widget build(tvWidget, mobileWidget) {
    return MyPlatform.isTvMode ? tvWidget : mobileWidget;
  }
}
