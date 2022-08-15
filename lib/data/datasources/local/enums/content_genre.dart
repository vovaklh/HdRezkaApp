import 'package:flutter/material.dart';
import 'package:hdrezka_app/core/utils/extensions/build_context_ext.dart';

enum ContentGenre {
  any,
  drama,
  comedy,
  crime,
  detective,
  action,
  adventures,
  fantasy,
  melodrama,
  western,
  fiction,
  horror,
  musical,
  military,
  documentary,
  erotic,
  cognitive,
  arthouse;

  const ContentGenre();

  String toText(BuildContext context) {
    switch (this) {
      case ContentGenre.any:
        return context.localizations.anyGenre;
      case ContentGenre.drama:
        return context.localizations.drama;
      case ContentGenre.comedy:
        return context.localizations.comedy;
      case ContentGenre.crime:
        return context.localizations.crime;
      case ContentGenre.detective:
        return context.localizations.detective;
      case ContentGenre.action:
        return context.localizations.action;
      case ContentGenre.adventures:
        return context.localizations.adventures;
      case ContentGenre.fantasy:
        return context.localizations.fantasy;
      case ContentGenre.melodrama:
        return context.localizations.melodrama;
      case ContentGenre.western:
        return context.localizations.western;
      case ContentGenre.fiction:
        return context.localizations.fiction;
      case ContentGenre.horror:
        return context.localizations.horror;
      case ContentGenre.musical:
        return context.localizations.musical;
      case ContentGenre.military:
        return context.localizations.military;
      case ContentGenre.documentary:
        return context.localizations.documentary;
      case ContentGenre.erotic:
        return context.localizations.erotic;
      case ContentGenre.cognitive:
        return context.localizations.cognitive;
      case ContentGenre.arthouse:
        return context.localizations.arthouse;
    }
  }
}
