import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hdrezka_app/core/exceptions/local_exception.dart';
import 'package:hdrezka_app/core/utils/extensions/build_context_ext.dart';

abstract class ErrorHandler {
  static String processError(BuildContext context, Object exception) {
    if (exception is FirebaseAuthException) {
      return _processFirebaseAuthException(exception, context);
    } else if (exception is LocalException) {
      return exception.error.toText(context);
    } else {
      return context.localizations.error;
    }
  }

  static String _processFirebaseAuthException(
    FirebaseAuthException exception,
    BuildContext context,
  ) {
    if (exception.code == "wrong-password") {
      return context.localizations.incorrectPassword;
    } else if (exception.code == "user-not-found") {
      return context.localizations.userNotFound;
    } else if (exception.code == "email-already-in-use") {
      return context.localizations.accountAlreadyExists;
    } else if (exception.code == "network-request-failed") {
      context.localizations.noInternetConnection;
    }
    return context.localizations.error;
  }
}
