import 'package:flutter/material.dart';
import 'package:hdrezka_app/core/utils/extensions/build_context_ext.dart';
import 'package:hdrezka_app/data/datasources/local/enums/content_genre.dart';
import 'package:hdrezka_app/data/datasources/local/enums/content_type.dart';
import 'package:hdrezka_app/data/datasources/local/models/content_category_wrapper.dart';

class CategoriesDiaolog extends StatefulWidget {
  final ContentCategoryWrapper categoryWrapper;
  final int minYear;

  const CategoriesDiaolog({
    required this.categoryWrapper,
    required this.minYear,
    Key? key,
  }) : super(key: key);

  @override
  State<CategoriesDiaolog> createState() => _CategoriesDiaologState();
}

class _CategoriesDiaologState extends State<CategoriesDiaolog> {
  final _currentYear = DateTime.now().year;

  late ContentCategoryWrapper wrapper;

  void _onTypeChanged(ContentType? type) {
    if (type != null) {
      setState(() {
        wrapper = wrapper.copyWith(type: type);
      });
    }
  }

  void _onGenreChanged(ContentGenre? genre) {
    if (genre != null) {
      setState(() {
        wrapper = wrapper.copyWith(genre: genre);
      });
    }
  }

  void _onYearChanged(dynamic year) {
    if (year is String) {
      setState(() {
        wrapper = wrapper.copyWith(year: null);
      });
    }
    if (year is int) {
      setState(() {
        wrapper = wrapper.copyWith(year: year);
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
    wrapper = widget.categoryWrapper;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(context.localizations.categories),
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
          Text(context.localizations.selectType),
          const SizedBox(height: 6),
          _buildTypeDropdownButton(),
          const SizedBox(height: 10),
          Text(context.localizations.selectGenre),
          const SizedBox(height: 6),
          _buildGenreDropdownButton(),
          const SizedBox(height: 10),
          Text(context.localizations.selectYear),
          const SizedBox(height: 6),
          _buildYearDropdownButton(context),
        ],
      ),
    );
  }

  Widget _buildTypeDropdownButton() {
    return DropdownButton<ContentType>(
      value: wrapper.type,
      dropdownColor: context.color.categoriesDialogDropdownColor,
      onChanged: _onTypeChanged,
      isExpanded: true,
      elevation: 0,
      items: ContentType.values
          .where((type) => type != ContentType.all)
          .map((type) => DropdownMenuItem(
                value: type,
                child: Text(
                  type.toText(context),
                  style: context.text.categoriesDialogMenuItem,
                ),
              ))
          .toList(),
    );
  }

  Widget _buildGenreDropdownButton() {
    return DropdownButton<ContentGenre>(
      value: wrapper.genre,
      dropdownColor: context.color.categoriesDialogDropdownColor,
      onChanged: _onGenreChanged,
      isExpanded: true,
      elevation: 0,
      items: ContentGenre.values
          .map((type) => DropdownMenuItem(
                value: type,
                child: Text(
                  type.toText(context),
                  style: context.text.categoriesDialogMenuItem,
                ),
              ))
          .toList(),
    );
  }

  Widget _buildYearDropdownButton(BuildContext context) {
    return DropdownButton<dynamic>(
      value: wrapper.year ?? context.localizations.duringAllTime,
      dropdownColor: context.color.categoriesDialogDropdownColor,
      onChanged: _onYearChanged,
      isExpanded: true,
      elevation: 0,
      items: [
        DropdownMenuItem(
          value: context.localizations.duringAllTime,
          child: Text(
            context.localizations.duringAllTime,
            style: context.text.filterDialogMenuItem,
          ),
        ),
        ...[for (var i = _currentYear; i >= widget.minYear; i--) i]
            .map((year) => DropdownMenuItem(
                  value: year,
                  child: Text(
                    year.toString(),
                    style: context.text.categoriesDialogMenuItem,
                  ),
                ))
            .toList(),
      ],
    );
  }
}
