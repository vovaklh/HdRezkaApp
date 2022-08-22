import 'package:flutter/material.dart';
import 'package:hdrezka_app/core/utils/extensions/build_context_ext.dart';
import 'package:useful_extensions/useful_extensions.dart';

mixin Validator {
  String? validateEmail(String? email, BuildContext context) {
    if (email.isNullOrEmpty) {
      return context.localizations.emailMustNotBeEmpty;
    } else if (email.isEmailValid().not()) {
      return context.localizations.incorrectEmail;
    }
    return null;
  }

  String? validatePassword(
    String? password,
    BuildContext context, [
    minPasswordLength = 8,
  ]) {
    if (password.isNullOrEmpty) {
      return context.localizations.passwordMustNotBeEmpty;
    } else if (password!
        .trim()
        .isPasswordLengthLonger(length: minPasswordLength)
        .not()) {
      return context.localizations.passwordMustBeLonger(minPasswordLength);
    }
    return null;
  }
}
