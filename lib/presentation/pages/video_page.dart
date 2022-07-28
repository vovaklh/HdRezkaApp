import 'dart:io' show Platform;

import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:hdrezka_app/core/utils/extensions/build_context_ext.dart';

class VideoPage extends StatefulWidget {
  final Map<String, String> videos;
  final String initialVideo;

  const VideoPage({
    required this.videos,
    required this.initialVideo,
    Key? key,
  }) : super(key: key);

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  late BetterPlayerController _controller;

  void _initPlayer() {
    final dataSource = _getPlayerDataSource();
    final configuration = _getPlayerConfiguration();
    _controller = BetterPlayerController(
      configuration,
      betterPlayerDataSource: dataSource,
    );
  }

  BetterPlayerDataSource _getPlayerDataSource() {
    return BetterPlayerDataSource(
      BetterPlayerDataSourceType.network,
      widget.initialVideo,
      resolutions: widget.videos,
    );
  }

  BetterPlayerConfiguration _getPlayerConfiguration() {
    return BetterPlayerConfiguration(
      translations: [
        BetterPlayerTranslations(
          languageCode: 'ru',
          generalDefaultError: context.localizations.generalDefaultError,
          generalDefault: context.localizations.generalDefault,
          qualityAuto: context.localizations.qualityAuto,
          generalNone: context.localizations.generalNone,
          generalRetry: context.localizations.generalRetry,
          overflowMenuPlaybackSpeed:
              context.localizations.overflowMenuPlaybackSpeed,
          overflowMenuQuality: context.localizations.overflowMenuQuality,
        ),
      ],
      aspectRatio: 16 / 9,
      autoPlay: true,
      allowedScreenSleep: false,
      fullScreenByDefault: true,
      controlsConfiguration: BetterPlayerControlsConfiguration(
        enableSubtitles: false,
        enableAudioTracks: false,
        playerTheme: Platform.isAndroid
            ? BetterPlayerTheme.material
            : BetterPlayerTheme.cupertino,
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _initPlayer();
  }

  @override
  void dispose() {
    _controller.dispose(forceDispose: true);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: BetterPlayer(
              controller: _controller,
            ),
          ),
        ),
      ),
    );
  }
}
