import 'package:flutter/material.dart';
import 'package:hdrezka_app/core/utils/extensions/build_context_ext.dart';

enum ContentType {
  all,
  film("Фильм"),
  series("Сериал"),
  cartoon("Мультфильм"),
  anime("Аниме");

  final String value;

  const ContentType([this.value = ""]);

  Color getColor() {
    switch (this) {
      case ContentType.film:
        return const Color(0xFF00A0B0);
      case ContentType.series:
        return const Color(0xFFCB5A5E);
      case ContentType.cartoon:
        return const Color(0xFF216D2B);
      case ContentType.anime:
        return const Color(0xFF696969);
      default:
        return const Color(0xFF909215);
    }
  }

  String toText(BuildContext context) {
    switch (this) {
      case ContentType.all:
        return context.localizations.all;
      case ContentType.film:
        return context.localizations.film;
      case ContentType.series:
        return context.localizations.series;
      case ContentType.cartoon:
        return context.localizations.cartoon;
      case ContentType.anime:
        return context.localizations.anime;
    }
  }
}
