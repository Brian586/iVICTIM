import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class CustomVideoWidget extends StatefulWidget {
  final String? videoId;
  const CustomVideoWidget({Key? key, this.videoId}) : super(key: key);

  @override
  State<CustomVideoWidget> createState() => _CustomVideoWidgetState();
}

class _CustomVideoWidgetState extends State<CustomVideoWidget> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoId!,
      params: const YoutubePlayerParams(
        playlist: [],
        autoPlay: false,
        startAt: Duration.zero,
        showControls: true,
        showFullscreenButton: true,
        desktopMode: false,
        privacyEnhanced: true,
        useHybridComposition: true,
      ),
    );
    _controller.onEnterFullscreen = () {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
      log('Entered Fullscreen');
    };
    _controller.onExitFullscreen = () {
      log('Exited Fullscreen');
    };
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerControllerProvider(
      // Provides controller to all the widget below it.
      controller: _controller,
      child: const YoutubePlayerIFrame(
        aspectRatio: 16 / 9,
      ),
    );
  }
}
