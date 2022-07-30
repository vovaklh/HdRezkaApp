import 'package:flutter/material.dart';
import 'package:hdrezka_app/core/utils/extensions/build_context_ext.dart';
import 'package:hdrezka_app/data/datasources/local/enums/content_filter.dart';
import 'package:hdrezka_app/data/datasources/local/enums/content_type.dart';
import 'package:hdrezka_app/data/datasources/local/models/content_filter_wrapper.dart';

class FilterDialog extends StatefulWidget {
  final ContentFilterWrapper filterWrapper;

  const FilterDialog({
    required this.filterWrapper,
    Key? key,
  }) : super(key: key);

  @override
  State<FilterDialog> createState() => _FilterDialogState();
}

class _FilterDialogState extends State<FilterDialog> {
  late ContentFilterWrapper wrapper;

  void _onFilterChanged(ContentFilter? filter) {
    if (filter != null) {
      setState(() {
        wrapper = wrapper.copyWith(filter: filter);
      });
    }
  }

  void _onTypeChanged(ContentType? type) {
    if (type != null) {
      setState(() {
        wrapper = wrapper.copyWith(type: type);
      });
    }
  }

  void _onCancel() {
    Navigator.pop(context);
  }

  void _onSave() {
    Navigator.pop(context, wrapper);
  }

  @override
  void initState() {
    super.initState();
    wrapper = widget.filterWrapper;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(context.localizations.filters),
      actions: [
        TextButton(
          onPressed: _onCancel,
          child: Text(context.localizations.cancel.toUpperCase()),
        ),
        TextButton(
          onPressed: _onSave,
          child: Text(
            context.localizations.ok.toUpperCase(),
          ),
        ),
      ],
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(context.localizations.sortBy),
          const SizedBox(height: 6),
          DropdownButton<ContentFilter>(
            value: wrapper.filter,
            dropdownColor: context.color.filterDialogDropdownColor,
            onChanged: _onFilterChanged,
            isExpanded: true,
            elevation: 0,
            items: ContentFilter.values
                .map((filter) => DropdownMenuItem(
                      value: filter,
                      child: Text(
                        filter.toText(context),
                        style: context.text.filterDialogMenuItem,
                      ),
                    ))
                .toList(),
          ),
          const SizedBox(height: 10),
          Text(context.localizations.selectType),
          const SizedBox(height: 6),
          DropdownButton<ContentType>(
            value: wrapper.type,
            dropdownColor: context.color.filterDialogDropdownColor,
            onChanged: _onTypeChanged,
            isExpanded: true,
            elevation: 0,
            items: ContentType.values
                .map((type) => DropdownMenuItem(
                      value: type,
                      child: Text(
                        type.toText(context),
                        style: context.text.filterDialogMenuItem,
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
