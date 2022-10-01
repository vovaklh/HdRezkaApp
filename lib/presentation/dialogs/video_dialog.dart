import 'package:external_video_player_launcher/external_video_player_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hdrezka_app/core/di/locator.dart';
import 'package:hdrezka_app/core/utils/extensions/build_context_ext.dart';
import 'package:hdrezka_app/core/utils/utils/my_platform.dart';
import 'package:hdrezka_app/presentation/cubits/video_cubit/video_cubit.dart';
import 'package:hdrezka_app/presentation/pages/video_page.dart';
import 'package:hdrezka_app/presentation/widgets/loader.dart';

class VideoDialog extends StatelessWidget {
  final String title;
  final String url;
  final String translationId;
  final VoidCallback? onVideoTappped;
  final String? seasonId;
  final String? seriesId;

  final _cubit = locator<VideoCubit>();

  VideoDialog({
    required this.title,
    required this.url,
    required this.translationId,
    this.onVideoTappped,
    this.seasonId,
    this.seriesId,
    Key? key,
  }) : super(key: key);

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
    onVideoTappped?.call();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      scrollable: true,
      titlePadding: const EdgeInsets.all(8),
      title: Text(context.localizations.resolution),
      content: BlocBuilder<VideoCubit, VideoState>(
        bloc: _cubit..getVideos(url, translationId, seasonId, seriesId),
        builder: (_, state) {
          return state.maybeWhen(
            success: (videos) => _Videos(videos, _onResolutionTap),
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

class _Videos extends StatelessWidget {
  final Map<String, String> videos;
  final Function(
    BuildContext context,
    Map<String, String> videos,
    String url,
  ) onResolutionTap;

  const _Videos(
    this.videos,
    this.onResolutionTap, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...videos.entries.map(
          (video) => ListTile(
            title: Text(
              video.key,
              style: context.text.videoDialogItem,
            ),
            onTap: () => onResolutionTap(
              context,
              videos,
              video.value,
            ),
          ),
        ),
      ],
    );
  }
}
