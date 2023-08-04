import 'package:decipher/componenets/custom_tab.dart';
import 'package:decipher/dummy_data.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MajorsOverviewScreen extends StatefulWidget {
  MajorsOverviewScreen({
    super.key,
    required this.majorId,
    required this.tabButtonColor,
    required this.appBarTitle,
  });

  final Color tabButtonColor;
  final int majorId;
  final String appBarTitle;

  @override
  State<MajorsOverviewScreen> createState() => _MajorsOverviewScreenState();
}

class _MajorsOverviewScreenState extends State<MajorsOverviewScreen> {
  final _controller = PageController();
  late YoutubePlayerController _playerController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     _playerController = YoutubePlayerController(
      initialVideoId: majors[widget.majorId].watch,
      flags: YoutubePlayerFlags(
        mute: false,
        showLiveFullscreenButton: false,
        autoPlay: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final imageHeight = screenHeight / 3;

    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _playerController,
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
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              widget.appBarTitle,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            backgroundColor: Theme.of(context).primaryColor,
          ),
          body: Column(
            children: [
              SizedBox(
                height: imageHeight,
                width: double.infinity,
                child: Image.asset(
                  majors[widget.majorId].assetPath,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32.0,
                ),
                child: Text(
                  majors[widget.majorId].title,
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              CustomTab(
                controller: _controller,
                selectedColor: widget.tabButtonColor,
                tabText1: "Description",
                tabText2: "Overview",
                tabText3: "Watch",
                unselectedColor: widget.tabButtonColor.withOpacity(0.4),
              ),
              const SizedBox(
                height: 24.0,
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: PageView(
                  controller: _controller,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    ListView(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      children: [
                        Text(
                          majors[widget.majorId].description,
                          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: 12.0,
                              ),
                        )
                      ],
                    ),
                    ListView(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      children: [
                        Text(
                          majors[widget.majorId].overview,
                          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              fontWeight: FontWeight.w600, fontSize: 12.0),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 32.0),
                      child: player,
                    )
                  ],
                ),
              ),)
            ],
          ),
        );
      }
    );
  }

  @override
  void dispose() {
    _playerController.dispose();
    _controller.dispose();
    super.dispose();
  }
}
