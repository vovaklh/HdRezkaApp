import 'package:flutter/material.dart';
import 'package:hdrezka_app/core/utils/extensions/build_context_ext.dart';

class MyErrorWidget extends StatelessWidget {
  final String message;

  const MyErrorWidget(this.message, [Key? key]) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        style: context.text.generalError,
      ),
    );
  }
}
