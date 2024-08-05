import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  final VideoPlayerController videoPlayerController;
  final bool looping;
  VideoPlayerScreen({super.key, required this.videoPlayerController, required this.looping});

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _chewieController = ChewieController(
      videoPlayerController: widget.videoPlayerController,
      aspectRatio: 16 / 9, // Adjust as per your video's aspect ratio
      autoInitialize: true,
      looping: widget.looping,
      // Other options can be configured as needed
    );
  }

  @override
  void dispose() {
    super.dispose();
    widget.videoPlayerController.dispose();
    _chewieController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Adjust width as needed
      height: 200, // Adjust height as needed
      color: Colors.grey[300], // Placeholder background color
      child: Chewie(controller: _chewieController)
     // child: VideoPlayer(controller: chewieController)
    );}
}
