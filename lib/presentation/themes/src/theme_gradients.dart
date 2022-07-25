part of '../theme.dart';

class ThemeGradients extends ThemeExtension<ThemeGradients> {
  final Gradient contentLayer;

  const ThemeGradients({
    required this.contentLayer,
  });

  @override
  ThemeExtension<ThemeGradients> copyWith({
    Gradient? contentLayer,
  }) {
    return ThemeGradients(
      contentLayer: contentLayer ?? this.contentLayer,
    );
  }

  @override
  ThemeExtension<ThemeGradients> lerp(
    ThemeExtension<ThemeGradients>? other,
    double t,
  ) {
    if (other is! ThemeGradients) {
      return this;
    }

    return ThemeGradients(
      contentLayer: Gradient.lerp(contentLayer, other.contentLayer, t)!,
    );
  }

  static get light => ThemeGradients(
        contentLayer: LinearGradient(
          colors: [
            AppColors.black.withOpacity(0.5),
            AppColors.black.withOpacity(0.5),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      );

  static get dark => ThemeGradients(
        contentLayer: LinearGradient(
          colors: [
            AppColors.black.withOpacity(0.5),
            AppColors.black.withOpacity(0.5),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      );
}
