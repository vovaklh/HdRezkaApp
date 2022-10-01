import 'package:flutter/material.dart';
import 'package:hdrezka_app/core/utils/extensions/build_context_ext.dart';

class ErrorIndicator extends StatelessWidget {
  final dynamic error;
  final VoidCallback onTryAgain;

  const ErrorIndicator(
    this.error,
    this.onTryAgain, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 10),
          Text(
            error ?? context.localizations.error,
            style: context.text.refreshButton,
          ),
          const SizedBox(height: 4),
          IconButton(
            onPressed: () =>
                Future.delayed(const Duration(milliseconds: 100), onTryAgain),
            splashRadius: 16,
            iconSize: 30,
            icon: Icon(
              Icons.refresh,
              color: context.color.refreshButtonIconColor,
            ),
          ),
        ],
      ),
    );
  }
}
