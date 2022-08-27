import 'package:flutter/material.dart';
import 'package:hdrezka_app/core/utils/extensions/build_context_ext.dart';

class LocalException implements Exception {
  final LocalError error;

  LocalException(this.error);
}

enum LocalError {
  signInToSeeHistory,
  signInToSeeFavorites,
  signInToAddToFavorites,
  signInToDeleteFromFavorites;

  const LocalError();

  String toText(BuildContext buildContext) {
    switch (this) {
      case signInToSeeHistory:
        return buildContext.localizations.signInToSeeHistory;
      case LocalError.signInToSeeFavorites:
        return buildContext.localizations.signInToSeeFavorites;
      case LocalError.signInToAddToFavorites:
        return buildContext.localizations.signInToAddToFavorites;
      case LocalError.signInToDeleteFromFavorites:
        return buildContext.localizations.signInToDeleteFromFavorites;
    }
  }
}
