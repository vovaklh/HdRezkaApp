import 'package:external_video_player_launcher/external_video_player_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hdrezka_app/core/di/locator.dart';
import 'package:hdrezka_app/core/utils/extensions/build_context_ext.dart';
import 'package:hdrezka_app/core/utils/utils/my_platform.dart';
import 'package:hdrezka_app/presentation/blocs/video_bloc/video_bloc.dart';
import 'package:hdrezka_app/presentation/pages/video_page.dart';
import 'package:hdrezka_app/presentation/widgets/loader.dart';

class VideoDialog extends StatelessWidget {
  final String title;
  final String url;
  final String translationId;
  final VoidCallback? onVideoTappped;
  final String? seasonId;
  final String? seriesId;

  final _bloc = locator<VideoBloc>();

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
      title: Text(
        context.localizations.resolution,
        style: context.text.videoDialogTitle,
      ),
      content: BlocBuilder<VideoBloc, VideoState>(
        bloc: _bloc
          ..add(GetVideosEvent(url, translationId, seasonId, seriesId)),
        builder: _blocBuilder,
      ),
    );
  }

  Widget _blocBuilder(BuildContext context, VideoState state) {
    return state.maybeWhen(
      success: (videos) => _buildVideos(context, videos),
      orElse: () => const SizedBox(
        height: 100,
        child: Loader(),
      ),
    );
  }

  Widget _buildVideos(BuildContext context, Map<String, String> videos) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...videos.entries.map(
          (video) => SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () => _onResolutionTap(
                context,
                videos,
                video.value,
              ),
              style: TextButton.styleFrom(
                alignment: Alignment.centerLeft,
              ),
              child: Text(
                video.key,
                style: context.text.videoDialogItem,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
