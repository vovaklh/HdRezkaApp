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
  final TextStyle contentDetailsTitle;
  final TextStyle contentDetailsData;
  final TextStyle contentDetailsPlot;
  final TextStyle contentDetailsDescription;

  ThemeTextStyles({
    required this.test,
    required this.contentType,
    required this.contentStatus,
    required this.contentTitle,
    required this.contentShortInfo,
    required this.filterDialogMenuItem,
    required this.filterButton,
    required this.refreshButton,
    required this.contentDetailsTitle,
    required this.contentDetailsData,
    required this.contentDetailsPlot,
    required this.contentDetailsDescription,
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
    TextStyle? contentDetailsTitle,
    TextStyle? contentDetailsData,
    TextStyle? contentDetailsPlot,
    TextStyle? contentDetailsDescription,
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
      contentDetailsTitle: contentDetailsTitle ?? this.contentDetailsTitle,
      contentDetailsData: contentDetailsData ?? this.contentDetailsData,
      contentDetailsPlot: contentDetailsPlot ?? this.contentDetailsPlot,
      contentDetailsDescription:
          contentDetailsDescription ?? this.contentDetailsDescription,
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
      contentDetailsTitle:
          TextStyle.lerp(contentDetailsTitle, other.contentDetailsTitle, t)!,
      contentDetailsData:
          TextStyle.lerp(contentDetailsData, other.contentDetailsData, t)!,
      contentDetailsPlot:
          TextStyle.lerp(contentDetailsPlot, other.contentDetailsPlot, t)!,
      contentDetailsDescription: TextStyle.lerp(
          contentDetailsDescription, other.contentDetailsDescription, t)!,
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
        contentDetailsTitle: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
        ),
        contentDetailsData: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
        ),
        contentDetailsPlot: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
        ),
        contentDetailsDescription: headline2.copyWith(
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
        contentDetailsTitle: headline2.copyWith(
          fontSize: 24,
          color: AppColors.red,
          fontWeight: FontWeight.bold,
        ),
        contentDetailsData: headline1.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w400,
        ),
        contentDetailsPlot: headline1.copyWith(
          fontSize: 20,
          color: AppColors.white,
          fontWeight: FontWeight.bold,
        ),
        contentDetailsDescription: headline1.copyWith(
          color: AppColors.white,
        ),
      );
}
