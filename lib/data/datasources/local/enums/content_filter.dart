import 'package:flutter/material.dart';
import 'package:hdrezka_app/core/utils/extensions/build_context_ext.dart';

enum ContentFilter {
  last,
  popular,
  soon,
  watching;

  const ContentFilter();

  String toText(BuildContext context) {
    switch (this) {
      case ContentFilter.last:
        return context.localizations.newHot;
      case ContentFilter.popular:
        return context.localizations.popular;
      case ContentFilter.soon:
        return context.localizations.soon;
      case ContentFilter.watching:
        return context.localizations.nowWatching;
    }
  }
}
