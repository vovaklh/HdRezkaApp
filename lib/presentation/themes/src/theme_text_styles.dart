part of '../theme.dart';

class ThemeTextStyles extends ThemeExtension<ThemeTextStyles> {
  final TextStyle test;
  final TextStyle contentType;
  final TextStyle contentStatus;
  final TextStyle contentTitle;
  final TextStyle contentShortInfo;
  final TextStyle filterDialogMenuItem;
  final TextStyle filterButton;
  final TextStyle refreshButton;

  ThemeTextStyles({
    required this.test,
    required this.contentType,
    required this.contentStatus,
    required this.contentTitle,
    required this.contentShortInfo,
    required this.filterDialogMenuItem,
    required this.filterButton,
    required this.refreshButton,
  });

  @override
  ThemeExtension<ThemeTextStyles> copyWith({
    TextStyle? test,
    TextStyle? contentType,
    TextStyle? contentStatus,
    TextStyle? contentTitle,
    TextStyle? contentShortInfo,
    TextStyle? filterDialogSubtitle,
    TextStyle? filterDialogMenuItem,
    TextStyle? filterButton,
    TextStyle? refreshButton,
  }) {
    return ThemeTextStyles(
      test: test ?? this.test,
      contentType: contentType ?? this.contentType,
      contentStatus: contentStatus ?? this.contentStatus,
      contentTitle: contentTitle ?? this.contentTitle,
      contentShortInfo: contentShortInfo ?? this.contentShortInfo,
      filterDialogMenuItem: filterDialogMenuItem ?? this.filterDialogMenuItem,
      filterButton: filterButton ?? this.filterButton,
      refreshButton: refreshButton ?? this.refreshButton,
    );
  }

  @override
  ThemeExtension<ThemeTextStyles> lerp(
    ThemeExtension<ThemeTextStyles>? other,
    double t,
  ) {
    if (other is! ThemeTextStyles) {
      return this;
    }

    return ThemeTextStyles(
      test: TextStyle.lerp(test, other.test, t)!,
      contentType: TextStyle.lerp(contentType, other.contentType, t)!,
      contentStatus: TextStyle.lerp(contentStatus, other.contentStatus, t)!,
      contentTitle: TextStyle.lerp(contentTitle, other.contentTitle, t)!,
      contentShortInfo:
          TextStyle.lerp(contentShortInfo, other.contentShortInfo, t)!,
      filterDialogMenuItem:
          TextStyle.lerp(filterDialogMenuItem, other.filterDialogMenuItem, t)!,
      filterButton: TextStyle.lerp(filterButton, other.filterButton, t)!,
      refreshButton: TextStyle.lerp(refreshButton, other.refreshButton, t)!,
    );
  }

  // TODO: Refactor later
  static get light => ThemeTextStyles(
        test: headline1.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
        ),
        contentType: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
        ),
        contentStatus: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
        ),
        contentTitle: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
        ),
        contentShortInfo: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
        ),
        filterDialogMenuItem: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w400,
        ),
        filterButton: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
        ),
        refreshButton: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
        ),
      );

  static get dark => ThemeTextStyles(
        test: headline1.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
        ),
        contentType: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w400,
        ),
        contentStatus: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w400,
        ),
        contentTitle: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w400,
        ),
        contentShortInfo: headline2.copyWith(
          color: AppColors.lighterGrey,
          fontWeight: FontWeight.w400,
        ),
        filterDialogMenuItem: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w400,
        ),
        filterButton: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w500,
        ),
        refreshButton: headline2.copyWith(
          color: AppColors.white,
        ),
      );
}
