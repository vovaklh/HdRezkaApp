part of '../theme.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color test;
  final Color contentStatusBackground;
  final Color filterDialogDropdownColor;
  final Color filterDialogDropdownFocusColor;
  final Color filterButtonFillColor;
  final Color filterButtonFocusColor;
  final Color refreshButtonIconColor;
  final Color refreshButtonFocusColor;

  const ThemeColors({
    required this.test,
    required this.contentStatusBackground,
    required this.filterDialogDropdownColor,
    required this.filterDialogDropdownFocusColor,
    required this.filterButtonFillColor,
    required this.filterButtonFocusColor,
    required this.refreshButtonIconColor,
    required this.refreshButtonFocusColor,
  });

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? test,
    Color? contentStatusBackground,
    Color? filterDialogDropdownColor,
    Color? filterDialogDropdownFocusColor,
    Color? filterButtonFillColor,
    Color? filterButtonFocusColor,
    Color? refreshButtonIconColor,
    Color? refreshButtonFocusColor,
  }) {
    return ThemeColors(
      test: test ?? this.test,
      contentStatusBackground:
          contentStatusBackground ?? this.contentStatusBackground,
      filterDialogDropdownColor:
          filterDialogDropdownColor ?? this.filterDialogDropdownColor,
      filterDialogDropdownFocusColor:
          filterDialogDropdownFocusColor ?? this.filterDialogDropdownFocusColor,
      filterButtonFillColor:
          filterButtonFillColor ?? this.filterButtonFillColor,
      filterButtonFocusColor:
          filterButtonFocusColor ?? this.filterButtonFocusColor,
      refreshButtonIconColor:
          refreshButtonIconColor ?? this.refreshButtonIconColor,
      refreshButtonFocusColor:
          refreshButtonFocusColor ?? this.refreshButtonFocusColor,
    );
  }

  @override
  ThemeExtension<ThemeColors> lerp(
    ThemeExtension<ThemeColors>? other,
    double t,
  ) {
    if (other is! ThemeColors) {
      return this;
    }

    return ThemeColors(
      test: Color.lerp(test, other.test, t)!,
      contentStatusBackground: Color.lerp(
          contentStatusBackground, other.contentStatusBackground, t)!,
      filterDialogDropdownColor: Color.lerp(
          filterDialogDropdownColor, other.filterDialogDropdownColor, t)!,
      filterDialogDropdownFocusColor: Color.lerp(filterDialogDropdownFocusColor,
          other.filterDialogDropdownFocusColor, t)!,
      filterButtonFillColor:
          Color.lerp(filterButtonFillColor, other.filterButtonFillColor, t)!,
      filterButtonFocusColor:
          Color.lerp(filterButtonFocusColor, other.filterButtonFocusColor, t)!,
      refreshButtonIconColor:
          Color.lerp(refreshButtonIconColor, other.refreshButtonIconColor, t)!,
      refreshButtonFocusColor: Color.lerp(
          refreshButtonFocusColor, other.refreshButtonFocusColor, t)!,
    );
  }

  static get light => ThemeColors(
        test: AppColors.white,
        contentStatusBackground: AppColors.black,
        filterDialogDropdownColor: AppColors.white,
        filterDialogDropdownFocusColor: AppColors.black,
        filterButtonFillColor: AppColors.grey,
        filterButtonFocusColor: AppColors.red,
        refreshButtonIconColor: AppColors.grey,
        refreshButtonFocusColor: AppColors.red,
      );

  static get dark => ThemeColors(
        test: AppColors.white,
        contentStatusBackground: AppColors.darkerRed,
        filterDialogDropdownColor: AppColors.lighterDark,
        filterDialogDropdownFocusColor: AppColors.blue.withOpacity(0.2),
        filterButtonFillColor: AppColors.grey,
        filterButtonFocusColor: AppColors.red,
        refreshButtonIconColor: AppColors.purpleAccent,
        refreshButtonFocusColor: AppColors.blue.withOpacity(0.3),
      );
}
