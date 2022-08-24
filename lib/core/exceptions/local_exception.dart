import 'package:flutter/material.dart';
import 'package:hdrezka_app/core/utils/extensions/build_context_ext.dart';

class LocalException implements Exception {
  final LocalError error;

  LocalException(this.error);
}

enum LocalError {
  signInToSeeHistory;

  const LocalError();

  String toText(BuildContext buildContext) {
    switch (this) {
      case signInToSeeHistory:
        return buildContext.localizations.signInToSeeHistory;
    }
  }
}
