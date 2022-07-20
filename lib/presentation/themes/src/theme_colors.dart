part of '../theme.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color test;

  const ThemeColors({
    required this.test,
  });

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? test,
  }) {
    return ThemeColors(
      test: test ?? this.test,
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
    );
  }

  static get light => const ThemeColors(
        test: AppColors.white,
      );

  static get dark => const ThemeColors(
        test: AppColors.white,
      );
}
