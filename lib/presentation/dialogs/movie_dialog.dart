import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hdrezka_app/core/di/locator.dart';
import 'package:hdrezka_app/core/utils/extensions/build_context_ext.dart';
import 'package:hdrezka_app/presentation/blocs/movie_bloc/movie_bloc.dart';
import 'package:hdrezka_app/presentation/dialogs/video_dialog.dart';
import 'package:hdrezka_app/presentation/widgets/loader.dart';

class MovieDialog extends StatelessWidget {
  final String url;
  final String title;
  final VoidCallback? onVideoTappped;

  final _bloc = locator<MovieBloc>();

  MovieDialog({
    required this.url,
    required this.title,
    this.onVideoTappped,
    Key? key,
  }) : super(key: key);

  void _onTranslationTap(BuildContext context, String translationId) {
    showDialog(
      context: context,
      builder: (_) => VideoDialog(
        title: title,
        url: url,
        translationId: translationId,
        onVideoTappped: onVideoTappped,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      scrollable: true,
      titlePadding: const EdgeInsets.all(8),
      title: Text(context.localizations.voiceActing),
      content: BlocBuilder<MovieBloc, MovieState>(
        bloc: _bloc..add(GetMovieTranslationsEvent(url)),
        builder: (_, state) {
          return state.maybeWhen(
            success: (translations) =>
                _MovieTranslations(translations, _onTranslationTap),
            orElse: () => const SizedBox(
              height: 100,
              child: Loader(),
            ),
          );
        },
      ),
    );
  }
}

class _MovieTranslations extends StatelessWidget {
  final Map<String, String> movieTranslations;
  final Function(BuildContext context, String translationId) onTranslationTap;

  const _MovieTranslations(
    this.movieTranslations,
    this.onTranslationTap, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 10),
        ...movieTranslations.entries.map(
          (translation) => ListTile(
            title: Text(
              translation.key,
              style: context.text.movieDialogItem,
            ),
            onTap: () => onTranslationTap(context, translation.value),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
