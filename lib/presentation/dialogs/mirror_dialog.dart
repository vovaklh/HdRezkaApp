import 'package:flutter/material.dart';
import 'package:hdrezka_app/core/utils/extensions/build_context_ext.dart';

class MirrorDialog extends StatelessWidget {
  final String currentMirror;
  final List<String> mirrors;

  const MirrorDialog({
    required this.currentMirror,
    required this.mirrors,
    super.key,
  });

  void _onMirrorTap(BuildContext context, String mirror) {
    Navigator.of(context).pop(mirror);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      title: Text(context.localizations.mirror),
      content: SizedBox(
        width: MediaQuery.of(context).size.width * 0.5,
        height: MediaQuery.of(context).size.height * 0.5,
        child: ListView(
          shrinkWrap: true,
          children: mirrors
              .map(
                (mirror) => ListTile(
                  title: Text(
                    mirror,
                    style: context.text.mirrorDialogItem,
                  ),
                  onTap: () => _onMirrorTap(context, mirror),
                  autofocus: mirror == currentMirror,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
