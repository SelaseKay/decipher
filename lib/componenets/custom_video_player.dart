import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CustomVideoPlayer extends StatefulWidget {
  const CustomVideoPlayer({
    super.key,
    required this.videoUrl,
  });
  final String videoUrl;

  @override
  State<CustomVideoPlayer> createState() => _CustomVideoPlayerState();
}

class _CustomVideoPlayerState extends State<CustomVideoPlayer> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    print("Video path: ${widget.videoUrl}");
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoUrl,
      flags: YoutubePlayerFlags(
        mute: false,
        showLiveFullscreenButton: false,
        autoPlay: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.amber,
        progressColors: ProgressBarColors(
          playedColor: Colors.amber,
          handleColor: Colors.amberAccent,
        ),
        onReady: () {
          print('Player is ready.');
        },
      ),
      builder: (context, player) {
        return Column(
          children: [
            // some widgets
            player,
            //some other widgets
          ],
        );
      },
    );
    // return
    //    Stack(
    //      children: [
    //        Center(
    //           child: _controller.value.isInitialized
    //               ? AspectRatio(
    //                   aspectRatio: _controller.value.aspectRatio,
    //                   child: VideoPlayer(_controller),
    //                 )
    //               : Container(),
    //         ),
    //         Positioned.fill(child: Center(
    //             child:  IconButton(
    //               onPressed: () {
    //                 setState(() {
    //           _controller.value.isPlaying
    //               ? _controller.pause()
    //               : _controller.play();
    //         });
    //               },
    //               icon: Icon(

    //                         _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
    //                         color: Colors.amber,
    //                       ),
    //             ),
    //           ),)
    //      ],
    //    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
