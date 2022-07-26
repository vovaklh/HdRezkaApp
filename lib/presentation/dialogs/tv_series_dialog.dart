import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hdrezka_app/core/di/locator.dart';
import 'package:hdrezka_app/core/utils/extensions/build_context_ext.dart';
import 'package:hdrezka_app/domain/entities/seasons_wrapper.dart';
import 'package:hdrezka_app/presentation/cubits/series_cubit/tv_series_cubit.dart';
import 'package:hdrezka_app/presentation/dialogs/video_dialog.dart';
import 'package:hdrezka_app/presentation/widgets/loader.dart';

class TvSeriesDialog extends StatelessWidget {
  final String url;
  final String title;
  final VoidCallback? onVideoTappped;

  final _cubit = locator<TvSeriesCubit>();

  TvSeriesDialog({
    required this.url,
    required this.title,
    this.onVideoTappped,
    Key? key,
  }) : super(key: key);

  void _onSeriesTap(
    BuildContext context,
    String translationId,
    String seasonId,
    String seriesId,
  ) {
    showDialog(
      context: context,
      builder: (_) => VideoDialog(
        title: title,
        url: url,
        onVideoTappped: onVideoTappped,
        translationId: translationId,
        seasonId: seasonId,
        seriesId: seriesId,
      ),
    );
  }

  void _onTranslationChanged(String? translationId) {
    if (translationId != null) {
      _cubit.getTvSeriesSeasons(url, translationId);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(8),
      scrollable: true,
      content: BlocBuilder<TvSeriesCubit, TvSeriesState>(
        bloc: _cubit..getTvSeriesSeasons(url),
        builder: _blocBuilder,
      ),
    );
  }

  Widget _blocBuilder(BuildContext context, TvSeriesState state) {
    return state.maybeWhen(
      success: ((translations, currentTranslationId, seasons) =>
          _buildSeasons(context, translations, currentTranslationId, seasons)),
      orElse: () => const SizedBox(
        height: 100,
        child: Loader(),
      ),
    );
  }

  Widget _buildSeasons(
    BuildContext context,
    Map<String, String> translations,
    String currentTranslationId,
    SeasonsWrapper wrapper,
  ) {
    return Column(
      children: [
        DropdownButton<String>(
          value: currentTranslationId,
          dropdownColor: context.color.tvSeriesDialogDropdownColor,
          onChanged: _onTranslationChanged,
          isExpanded: true,
          elevation: 0,
          items: translations.entries
              .map((entry) => DropdownMenuItem(
                    value: entry.value,
                    child: Text(
                      entry.key,
                      style: context.text.tvSeriesDialogMenuItem,
                    ),
                  ))
              .toList(),
        ),
        ..._buiildSeason(context, currentTranslationId, wrapper),
      ],
    );
  }

  List<Widget> _buiildSeason(
    BuildContext context,
    String currentTranslationId,
    SeasonsWrapper wrapper,
  ) {
    return wrapper.seasons.entries
        .map(
          (season) => ExpansionTile(
            title: Text(
              season.value,
              style: context.text.tvSeriesDialogExpansionTitle,
            ),
            tilePadding: const EdgeInsets.symmetric(horizontal: 8),
            children: [
              ...wrapper.episodes[season.key]!.entries
                  .map(
                    (episode) => ListTile(
                      title: Text(
                        episode.value,
                        style: context.text.tvSeriesDialogExpansionItem,
                      ),
                      onTap: () => _onSeriesTap(
                        context,
                        currentTranslationId,
                        season.key,
                        episode.key,
                      ),
                    ),
                  )
                  .toList(),
            ],
          ),
        )
        .toList();
  }
}
