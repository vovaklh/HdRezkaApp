part of '../theme.dart';

ThemeData createDarkTheme() {
  return ThemeData(
    textTheme: createTextTheme(),
    scaffoldBackgroundColor: AppColors.black,
    brightness: Brightness.dark,
    extensions: <ThemeExtension<dynamic>>[
      ThemeColors.dark,
      ThemeTextStyles.dark,
      ThemeGradients.dark,
    ],
    dialogTheme: DialogTheme(
      backgroundColor: AppColors.lightDark,
      titleTextStyle: headline1.copyWith(
        color: AppColors.white,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      contentTextStyle: headline1.copyWith(
        color: AppColors.white,
      ),
    ),
    focusColor: Colors.blue.withOpacity(0.2),
    appBarTheme: AppBarTheme(backgroundColor: Colors.black),
  );
}
