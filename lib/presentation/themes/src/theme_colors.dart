part of '../theme.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color toastTextColor;
  final Color toastBackgroundColor;
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
  final Color searchFieldFillColor;
  final Color searchFieldIconColor;
  final Color categoriesButtonFillColor;
  final Color categoriesButtonFocusColor;
  final Color categoriesDialogDropdownColor;
  final Color settingsItemIcon;
  final Color formFieldBorder;

  const ThemeColors({
    required this.toastTextColor,
    required this.toastBackgroundColor,
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
    required this.searchFieldFillColor,
    required this.searchFieldIconColor,
    required this.categoriesButtonFillColor,
    required this.categoriesButtonFocusColor,
    required this.categoriesDialogDropdownColor,
    required this.settingsItemIcon,
    required this.formFieldBorder,
  });

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? toastTextColor,
    Color? toastBackgroundColor,
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
    Color? searchFieldFillColor,
    Color? searchFieldIconColor,
    Color? categoriesButtonFillColor,
    Color? categoriesButtonFocusColor,
    Color? categoriesDialogDropdownColor,
    Color? settingsItemIcon,
    Color? formFieldBorder,
  }) {
    return ThemeColors(
      toastTextColor: toastTextColor ?? this.toastTextColor,
      toastBackgroundColor: toastBackgroundColor ?? this.toastBackgroundColor,
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
      searchFieldFillColor: searchFieldFillColor ?? this.searchFieldFillColor,
      searchFieldIconColor: searchFieldIconColor ?? this.searchFieldIconColor,
      categoriesButtonFillColor:
          categoriesButtonFillColor ?? this.categoriesButtonFillColor,
      categoriesButtonFocusColor:
          categoriesButtonFocusColor ?? this.categoriesButtonFocusColor,
      categoriesDialogDropdownColor:
          categoriesDialogDropdownColor ?? this.categoriesDialogDropdownColor,
      settingsItemIcon: settingsItemIcon ?? this.settingsItemIcon,
      formFieldBorder: formFieldBorder ?? this.formFieldBorder,
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
      toastTextColor: Color.lerp(toastTextColor, other.toastTextColor, t)!,
      toastBackgroundColor:
          Color.lerp(toastBackgroundColor, other.toastBackgroundColor, t)!,
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
      searchFieldFillColor:
          Color.lerp(searchFieldFillColor, other.searchFieldFillColor, t)!,
      searchFieldIconColor:
          Color.lerp(searchFieldIconColor, other.searchFieldIconColor, t)!,
      categoriesButtonFillColor: Color.lerp(
          categoriesButtonFillColor, other.categoriesButtonFillColor, t)!,
      categoriesButtonFocusColor: Color.lerp(
          categoriesButtonFocusColor, other.categoriesButtonFocusColor, t)!,
      categoriesDialogDropdownColor: Color.lerp(categoriesDialogDropdownColor,
          other.categoriesDialogDropdownColor, t)!,
      settingsItemIcon:
          Color.lerp(settingsItemIcon, other.settingsItemIcon, t)!,
      formFieldBorder: Color.lerp(formFieldBorder, other.formFieldBorder, t)!,
    );
  }

  static get light => ThemeColors(
        toastTextColor: AppColors.white,
        toastBackgroundColor: AppColors.black,
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
        searchFieldFillColor: AppColors.grey,
        searchFieldIconColor: AppColors.white,
        categoriesButtonFillColor: AppColors.grey,
        categoriesButtonFocusColor: AppColors.red,
        categoriesDialogDropdownColor: AppColors.white,
        settingsItemIcon: AppColors.grey,
        formFieldBorder: AppColors.grey,
      );

  static get dark => ThemeColors(
        toastTextColor: AppColors.white,
        toastBackgroundColor: AppColors.lighterDark,
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
        searchFieldFillColor: AppColors.lighterDark,
        searchFieldIconColor: AppColors.white,
        categoriesButtonFillColor: AppColors.grey,
        categoriesButtonFocusColor: AppColors.red,
        categoriesDialogDropdownColor: AppColors.lighterDark,
        settingsItemIcon: AppColors.white,
        formFieldBorder: AppColors.white,
      );
}
