import 'package:external_video_player_launcher/external_video_player_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hdrezka_app/core/di/locator.dart';
import 'package:hdrezka_app/core/utils/extensions/build_context_ext.dart';
import 'package:hdrezka_app/core/utils/utils/my_platform.dart';
import 'package:hdrezka_app/presentation/blocs/movie_bloc/movie_bloc.dart';
import 'package:hdrezka_app/presentation/pages/video_page.dart';
import 'package:hdrezka_app/presentation/widgets/loader.dart';

class MovieDialog extends StatelessWidget {
  final String url;
  final String title;

  final _bloc = locator<MovieBloc>();

  MovieDialog({
    required this.url,
    required this.title,
    Key? key,
  }) : super(key: key);

  void _onTranslationTap(String translationId) {
    _bloc.add(GetMovieVideosEvent(url, translationId));
  }

  void _onResolutionTap(
    BuildContext context,
    Map<String, String> videos,
    String videoUrl,
  ) {
    if (MyPlatform.isTvMode) {
      ExternalVideoPlayerLauncher.launchOtherPlayer(
        videoUrl,
        MIME.applicationMp4,
        {
          "title": title,
        },
      );
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => VideoPage(
            initialVideo: videoUrl,
            videos: videos,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(8),
      content: BlocBuilder<MovieBloc, MovieState>(
        bloc: _bloc..add(GetMovieTranslationsEvent(url)),
        builder: _blocBuilder,
      ),
    );
  }

  Widget _blocBuilder(BuildContext context, MovieState state) {
    return state.maybeWhen(
      successTranslations: (movieTranslations) => _buildMovieTranslations(
        context,
        movieTranslations,
      ),
      successVideos: (videos) => _buildMovieVideos(context, videos),
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
        Text(
          context.localizations.voiceActing,
          style: context.text.movieDialogTitle,
        ),
        const SizedBox(height: 10),
        ...movieTranslations.entries.map(
          (translation) => SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () => _onTranslationTap(translation.value),
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

  Widget _buildMovieVideos(
    BuildContext context,
    Map<String, String> movieVideos,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.localizations.resolution,
          style: context.text.movieDialogTitle,
        ),
        ...movieVideos.entries.map(
          (translation) => SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () => _onResolutionTap(
                context,
                movieVideos,
                translation.value,
              ),
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
