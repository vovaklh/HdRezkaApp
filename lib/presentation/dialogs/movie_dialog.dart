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
      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
      titlePadding: const EdgeInsets.all(8),
      title: Text(
        context.localizations.voiceActing,
        style: context.text.movieDialogTitle,
      ),
      content: BlocBuilder<MovieBloc, MovieState>(
        bloc: _bloc..add(GetMovieTranslationsEvent(url)),
        builder: _blocBuilder,
      ),
    );
  }

  Widget _blocBuilder(BuildContext context, MovieState state) {
    return state.maybeWhen(
      success: (translations) => _buildMovieTranslations(
        context,
        translations,
      ),
      orElse: () => const SizedBox(
        height: 100,
        child: Loader(),
      ),
    );
  }

  Widget _buildMovieTranslations(
    BuildContext context,
    Map<String, String> movieTranslations,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        ...movieTranslations.entries.map(
          (translation) => SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () => _onTranslationTap(context, translation.value),
              style: TextButton.styleFrom(
                alignment: Alignment.centerLeft,
              ),
              child: Text(
                translation.key,
                style: context.text.movieDialogItem,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
