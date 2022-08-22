import 'package:flutter/material.dart';

mixin ErrorProvider {
  void showError(String message, BuildContext context) {
    final snackBar = SnackBar(
      content: Text(
        message,
        textAlign: TextAlign.center,
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
