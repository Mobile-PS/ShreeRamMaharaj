import 'package:flutter/material.dart';
import 'package:maharaj/screen/video_player_screen.dart';
import 'package:video_player/video_player.dart';

class VideoViewerScreen extends StatefulWidget {
  const VideoViewerScreen({super.key});

  @override
  State<VideoViewerScreen> createState() => _VideoViewerScreenState();
}

class _VideoViewerScreenState extends State<VideoViewerScreen> {
  VideoPlayerController _controller = VideoPlayerController.networkUrl(
    Uri.parse('https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4')
  );

  @override
  void initState() {
    super.initState();
    _controller.initialize().then((_) {
      setState(() {
        _controller.play();
      });
    });

  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child:_controller.value.isInitialized
          ? VideoPlayerScreen(videoPlayerController: _controller, looping: true,)
          : CircularProgressIndicator(),);

  }
}
