part of '../theme.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color test;
  final Color contentStatusBackground;
  final Color filterDialogDropdownColor;
  final Color filterButtonFillColor;
  final Color filterButtonFocusColor;
  final Color refreshButtonIconColor;
  final Color playButtonIconColor;
  final Color playButtonFocusColor;
  final Color favoriteButtonIconColor;
  final Color favoriteButtonFocusColor;
  final Color tvSeriesDialogDropdownColor;

  const ThemeColors({
    required this.test,
    required this.contentStatusBackground,
    required this.filterDialogDropdownColor,
    required this.filterButtonFillColor,
    required this.filterButtonFocusColor,
    required this.refreshButtonIconColor,
    required this.playButtonIconColor,
    required this.playButtonFocusColor,
    required this.favoriteButtonIconColor,
    required this.favoriteButtonFocusColor,
    required this.tvSeriesDialogDropdownColor,
  });

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? test,
    Color? contentStatusBackground,
    Color? filterDialogDropdownColor,
    Color? filterButtonFillColor,
    Color? filterButtonFocusColor,
    Color? refreshButtonIconColor,
    Color? refreshButtonFocusColor,
    Color? playButtonIconColor,
    Color? playButtonFocusColor,
    Color? favoriteButtonIconColor,
    Color? favoriteButtonFocusColor,
    Color? tvSeriesDialogDropdownColor,
  }) {
    return ThemeColors(
      test: test ?? this.test,
      contentStatusBackground:
          contentStatusBackground ?? this.contentStatusBackground,
      filterDialogDropdownColor:
          filterDialogDropdownColor ?? this.filterDialogDropdownColor,
      filterButtonFillColor:
          filterButtonFillColor ?? this.filterButtonFillColor,
      filterButtonFocusColor:
          filterButtonFocusColor ?? this.filterButtonFocusColor,
      refreshButtonIconColor:
          refreshButtonIconColor ?? this.refreshButtonIconColor,
      playButtonIconColor: playButtonIconColor ?? this.playButtonIconColor,
      playButtonFocusColor: playButtonFocusColor ?? this.playButtonFocusColor,
      favoriteButtonIconColor:
          favoriteButtonIconColor ?? this.favoriteButtonIconColor,
      favoriteButtonFocusColor:
          favoriteButtonFocusColor ?? this.favoriteButtonFocusColor,
      tvSeriesDialogDropdownColor:
          tvSeriesDialogDropdownColor ?? this.tvSeriesDialogDropdownColor,
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
      filterButtonFillColor:
          Color.lerp(filterButtonFillColor, other.filterButtonFillColor, t)!,
      filterButtonFocusColor:
          Color.lerp(filterButtonFocusColor, other.filterButtonFocusColor, t)!,
      refreshButtonIconColor:
          Color.lerp(refreshButtonIconColor, other.refreshButtonIconColor, t)!,
      playButtonIconColor:
          Color.lerp(playButtonIconColor, other.playButtonIconColor, t)!,
      playButtonFocusColor:
          Color.lerp(playButtonFocusColor, other.playButtonFocusColor, t)!,
      favoriteButtonIconColor: Color.lerp(
          favoriteButtonIconColor, other.favoriteButtonIconColor, t)!,
      favoriteButtonFocusColor: Color.lerp(
          favoriteButtonFocusColor, other.favoriteButtonFocusColor, t)!,
      tvSeriesDialogDropdownColor: Color.lerp(
          tvSeriesDialogDropdownColor, other.tvSeriesDialogDropdownColor, t)!,
    );
  }

  static get light => ThemeColors(
        test: AppColors.white,
        contentStatusBackground: AppColors.black,
        filterDialogDropdownColor: AppColors.white,
        filterButtonFillColor: AppColors.grey,
        filterButtonFocusColor: AppColors.red,
        refreshButtonIconColor: AppColors.grey,
        playButtonIconColor: AppColors.grey,
        playButtonFocusColor: AppColors.red,
        favoriteButtonIconColor: AppColors.grey,
        favoriteButtonFocusColor: AppColors.red,
        tvSeriesDialogDropdownColor: AppColors.white,
      );

  static get dark => ThemeColors(
        test: AppColors.white,
        contentStatusBackground: AppColors.darkerRed,
        filterDialogDropdownColor: AppColors.lighterDark,
        filterButtonFillColor: AppColors.grey,
        filterButtonFocusColor: AppColors.red,
        refreshButtonIconColor: AppColors.purpleAccent,
        playButtonIconColor: AppColors.blue,
        playButtonFocusColor: AppColors.white.withOpacity(0.3),
        favoriteButtonIconColor: AppColors.red,
        favoriteButtonFocusColor: AppColors.white.withOpacity(0.3),
        tvSeriesDialogDropdownColor: AppColors.lighterDark,
      );
}
