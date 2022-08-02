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
  final Color navigationRailBackgroundColor;
  final Color navigationRailSelectedIconColor;
  final Color navigationRailUnselectedIconColor;
  final Color bottomNavigationBarBackgroundColor;
  final Color bottomNavigationBarSelectedItemColor;
  final Color bottomNavigationBarUnselectedItemColor;

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
    required this.navigationRailBackgroundColor,
    required this.navigationRailSelectedIconColor,
    required this.navigationRailUnselectedIconColor,
    required this.bottomNavigationBarBackgroundColor,
    required this.bottomNavigationBarSelectedItemColor,
    required this.bottomNavigationBarUnselectedItemColor,
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
    Color? navigationRailBackgroundColor,
    Color? navigationRailSelectedIconColor,
    Color? navigationRailUnselectedIconColor,
    Color? bottomNavigationBarBackgroundColor,
    Color? bottomNavigationBarSelectedItemColor,
    Color? bottomNavigationBarUnselectedItemColor,
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
      navigationRailBackgroundColor:
          navigationRailBackgroundColor ?? this.navigationRailBackgroundColor,
      navigationRailSelectedIconColor: navigationRailSelectedIconColor ??
          this.navigationRailSelectedIconColor,
      navigationRailUnselectedIconColor: navigationRailUnselectedIconColor ??
          this.navigationRailUnselectedIconColor,
      bottomNavigationBarBackgroundColor: bottomNavigationBarBackgroundColor ??
          this.bottomNavigationBarBackgroundColor,
      bottomNavigationBarSelectedItemColor:
          bottomNavigationBarSelectedItemColor ??
              this.bottomNavigationBarSelectedItemColor,
      bottomNavigationBarUnselectedItemColor:
          bottomNavigationBarUnselectedItemColor ??
              this.bottomNavigationBarUnselectedItemColor,
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
      navigationRailBackgroundColor: Color.lerp(navigationRailBackgroundColor,
          other.navigationRailBackgroundColor, t)!,
      navigationRailSelectedIconColor: Color.lerp(
          navigationRailSelectedIconColor,
          other.navigationRailSelectedIconColor,
          t)!,
      navigationRailUnselectedIconColor: Color.lerp(
          navigationRailUnselectedIconColor,
          other.navigationRailUnselectedIconColor,
          t)!,
      bottomNavigationBarBackgroundColor: Color.lerp(
          bottomNavigationBarBackgroundColor,
          other.bottomNavigationBarBackgroundColor,
          t)!,
      bottomNavigationBarSelectedItemColor: Color.lerp(
          bottomNavigationBarSelectedItemColor,
          other.bottomNavigationBarSelectedItemColor,
          t)!,
      bottomNavigationBarUnselectedItemColor: Color.lerp(
          bottomNavigationBarUnselectedItemColor,
          other.bottomNavigationBarUnselectedItemColor,
          t)!,
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
        navigationRailBackgroundColor: AppColors.black,
        navigationRailSelectedIconColor: AppColors.white,
        navigationRailUnselectedIconColor: AppColors.grey,
        bottomNavigationBarBackgroundColor: AppColors.black,
        bottomNavigationBarSelectedItemColor: AppColors.white,
        bottomNavigationBarUnselectedItemColor: AppColors.grey,
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
        navigationRailBackgroundColor: AppColors.black,
        navigationRailSelectedIconColor: AppColors.red,
        navigationRailUnselectedIconColor: AppColors.white,
        bottomNavigationBarBackgroundColor: AppColors.black,
        bottomNavigationBarSelectedItemColor: AppColors.red,
        bottomNavigationBarUnselectedItemColor: AppColors.white,
      );
}
