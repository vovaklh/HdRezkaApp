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
  final TextStyle movieDialogTitle;
  final TextStyle movieDialogItem;
  final TextStyle videoDialogTitle;
  final TextStyle videoDialogItem;
  final TextStyle tvSeriesDialogExpansionTitle;
  final TextStyle tvSeriesDialogExpansionItem;
  final TextStyle tvSeriesDialogMenuItem;
  final TextStyle navigationRailSelectedStyle;
  final TextStyle navigationRailUnselectedStyle;
  final TextStyle searchHint;
  final TextStyle searchInput;
  final TextStyle historySubtitle;
  final TextStyle favoriteSubtitle;
  final TextStyle categoriesButton;
  final TextStyle categoriesDialogMenuItem;
  final TextStyle settingsContainerTitle;
  final TextStyle settingsContainerItem;
  final TextStyle formFieldLabel;
  final TextStyle formFieldText;

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
    required this.movieDialogTitle,
    required this.movieDialogItem,
    required this.videoDialogTitle,
    required this.videoDialogItem,
    required this.tvSeriesDialogExpansionTitle,
    required this.tvSeriesDialogExpansionItem,
    required this.tvSeriesDialogMenuItem,
    required this.navigationRailSelectedStyle,
    required this.navigationRailUnselectedStyle,
    required this.searchHint,
    required this.searchInput,
    required this.historySubtitle,
    required this.favoriteSubtitle,
    required this.categoriesButton,
    required this.categoriesDialogMenuItem,
    required this.settingsContainerTitle,
    required this.settingsContainerItem,
    required this.formFieldLabel,
    required this.formFieldText,
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
    TextStyle? movieDialogTitle,
    TextStyle? movieDialogItem,
    TextStyle? videoDialogTitle,
    TextStyle? videoDialogItem,
    TextStyle? tvSeriesDialogExpansionTitle,
    TextStyle? tvSeriesDialogExpansionItem,
    TextStyle? tvSeriesDialogMenuItem,
    TextStyle? navigationRailSelectedStyle,
    TextStyle? navigationRailUnselectedStyle,
    TextStyle? searchHint,
    TextStyle? searchInput,
    TextStyle? historySubtitle,
    TextStyle? favoriteSubtitle,
    TextStyle? categoriesButton,
    TextStyle? categoriesDialogMenuItem,
    TextStyle? settingsContainerTitle,
    TextStyle? settingsContainerItem,
    TextStyle? formFieldLabel,
    TextStyle? formFieldText,
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
      movieDialogTitle: movieDialogTitle ?? this.movieDialogTitle,
      movieDialogItem: movieDialogItem ?? this.movieDialogItem,
      videoDialogTitle: videoDialogTitle ?? this.videoDialogTitle,
      videoDialogItem: videoDialogItem ?? this.videoDialogItem,
      tvSeriesDialogExpansionTitle:
          tvSeriesDialogExpansionTitle ?? this.tvSeriesDialogExpansionTitle,
      tvSeriesDialogExpansionItem:
          tvSeriesDialogExpansionItem ?? this.tvSeriesDialogExpansionItem,
      tvSeriesDialogMenuItem:
          tvSeriesDialogMenuItem ?? this.tvSeriesDialogMenuItem,
      navigationRailSelectedStyle:
          navigationRailSelectedStyle ?? this.navigationRailSelectedStyle,
      navigationRailUnselectedStyle:
          navigationRailUnselectedStyle ?? this.navigationRailUnselectedStyle,
      searchHint: searchHint ?? this.searchHint,
      searchInput: searchInput ?? this.searchInput,
      historySubtitle: historySubtitle ?? this.historySubtitle,
      favoriteSubtitle: favoriteSubtitle ?? this.favoriteSubtitle,
      categoriesButton: categoriesButton ?? this.categoriesButton,
      categoriesDialogMenuItem:
          categoriesDialogMenuItem ?? this.categoriesDialogMenuItem,
      settingsContainerTitle:
          settingsContainerTitle ?? this.settingsContainerTitle,
      settingsContainerItem:
          settingsContainerItem ?? this.settingsContainerItem,
      formFieldLabel: formFieldLabel ?? this.formFieldLabel,
      formFieldText: formFieldText ?? this.formFieldText,
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
      movieDialogTitle:
          TextStyle.lerp(movieDialogTitle, other.movieDialogTitle, t)!,
      movieDialogItem:
          TextStyle.lerp(movieDialogItem, other.movieDialogItem, t)!,
      videoDialogTitle:
          TextStyle.lerp(videoDialogTitle, other.videoDialogTitle, t)!,
      videoDialogItem:
          TextStyle.lerp(videoDialogItem, other.videoDialogItem, t)!,
      tvSeriesDialogExpansionTitle: TextStyle.lerp(
          tvSeriesDialogExpansionTitle, other.tvSeriesDialogExpansionTitle, t)!,
      tvSeriesDialogExpansionItem: TextStyle.lerp(
          tvSeriesDialogExpansionItem, other.tvSeriesDialogExpansionItem, t)!,
      tvSeriesDialogMenuItem: TextStyle.lerp(
          tvSeriesDialogMenuItem, other.tvSeriesDialogMenuItem, t)!,
      navigationRailSelectedStyle: TextStyle.lerp(
          navigationRailSelectedStyle, other.navigationRailSelectedStyle, t)!,
      navigationRailUnselectedStyle: TextStyle.lerp(
          navigationRailUnselectedStyle,
          other.navigationRailUnselectedStyle,
          t)!,
      searchHint: TextStyle.lerp(searchHint, other.searchHint, t)!,
      searchInput: TextStyle.lerp(searchInput, other.searchInput, t)!,
      historySubtitle:
          TextStyle.lerp(historySubtitle, other.historySubtitle, t)!,
      favoriteSubtitle:
          TextStyle.lerp(favoriteSubtitle, other.favoriteSubtitle, t)!,
      categoriesButton:
          TextStyle.lerp(categoriesButton, other.categoriesButton, t)!,
      categoriesDialogMenuItem: TextStyle.lerp(
          categoriesDialogMenuItem, other.categoriesDialogMenuItem, t)!,
      settingsContainerTitle: TextStyle.lerp(
          settingsContainerTitle, other.settingsContainerTitle, t)!,
      settingsContainerItem: TextStyle.lerp(
          settingsContainerItem, other.settingsContainerItem, t)!,
      formFieldLabel: TextStyle.lerp(formFieldLabel, other.formFieldLabel, t)!,
      formFieldText: TextStyle.lerp(formFieldText, other.formFieldText, t)!,
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
        movieDialogTitle: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
        ),
        movieDialogItem: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
        ),
        videoDialogTitle: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
        ),
        videoDialogItem: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
        ),
        tvSeriesDialogExpansionTitle: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
        ),
        tvSeriesDialogExpansionItem: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
        ),
        tvSeriesDialogMenuItem: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
        ),
        navigationRailSelectedStyle: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
        ),
        navigationRailUnselectedStyle: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
        ),
        searchHint: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
        ),
        searchInput: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
        ),
        historySubtitle: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
        ),
        favoriteSubtitle: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
        ),
        categoriesButton: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
        ),
        categoriesDialogMenuItem: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
        ),
        settingsContainerTitle: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
        ),
        settingsContainerItem: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
        ),
        formFieldLabel: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w700,
        ),
        formFieldText: headline2.copyWith(
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
        movieDialogTitle: headline1.copyWith(
          fontSize: 18,
          color: AppColors.white,
          fontWeight: FontWeight.bold,
        ),
        movieDialogItem: headline1.copyWith(
          color: AppColors.white,
        ),
        videoDialogTitle: headline1.copyWith(
          fontSize: 18,
          color: AppColors.white,
          fontWeight: FontWeight.bold,
        ),
        videoDialogItem: headline1.copyWith(
          color: AppColors.white,
        ),
        tvSeriesDialogExpansionTitle: headline1.copyWith(
          color: AppColors.white,
        ),
        tvSeriesDialogExpansionItem: headline2.copyWith(
          color: AppColors.white,
        ),
        tvSeriesDialogMenuItem: headline2.copyWith(
          color: AppColors.white,
        ),
        navigationRailSelectedStyle: headline2.copyWith(
          color: AppColors.red,
        ),
        navigationRailUnselectedStyle: headline2.copyWith(
          color: AppColors.white,
        ),
        searchHint: headline1.copyWith(
          color: AppColors.white,
        ),
        searchInput: headline1.copyWith(
          color: AppColors.white,
        ),
        historySubtitle: headline2.copyWith(
          color: AppColors.white,
        ),
        favoriteSubtitle: headline2.copyWith(
          color: AppColors.white,
        ),
        categoriesButton: headline2.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w500,
        ),
        categoriesDialogMenuItem: headline2.copyWith(
          color: AppColors.white,
        ),
        settingsContainerTitle: headline1.copyWith(
          color: AppColors.red,
        ),
        settingsContainerItem: headline2.copyWith(
          color: AppColors.white,
        ),
        formFieldLabel: headline1.copyWith(
          color: AppColors.grey,
        ),
        formFieldText: headline1.copyWith(
          color: AppColors.white,
        ),
      );
}
