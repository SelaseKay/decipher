import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CustomVideoPlayer extends StatefulWidget {
  const CustomVideoPlayer({super.key, required this.videoUrl,});
  final String videoUrl;

  @override
  State<CustomVideoPlayer> createState() => _CustomVideoPlayerState();
}

class _CustomVideoPlayerState extends State<CustomVideoPlayer> {
 late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    print("Video path: ${widget.videoUrl}");
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        widget.videoUrl))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return 
       Stack(
         children: [
           Center(
              child: _controller.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    )
                  : Container(),
            ),
            Positioned.fill(child: Center(
                child:  IconButton(
                  onPressed: () {
                    setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
                  },
                  icon: Icon(
                    
                            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                            color: Colors.amber,
                          ),
                ),
              ),)
         ],
       );

  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}