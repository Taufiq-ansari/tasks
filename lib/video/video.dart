import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FLutterVideoPlayer extends StatefulWidget {
  const FLutterVideoPlayer({super.key});

  @override
  State<FLutterVideoPlayer> createState() => _FLutterVideoPlayerState();
}

class _FLutterVideoPlayerState extends State<FLutterVideoPlayer> {
// controller
  late final VideoPlayerController videocontroller;

  @override
  void initState() {
    videocontroller = VideoPlayerController.networkUrl(
      Uri.parse(
        // "https://www.youtube.com/watch?v=0WD6vxQz5-I&list=RD0WD6vxQz5-I&start_radio=1",
        "https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4",
      ),
    );
    videocontroller.initialize();
    setState(() {
      videocontroller.play();
    });
    super.initState();
  }

//  audioplayer


 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Player"),
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              AspectRatio(
                aspectRatio: videocontroller.value.aspectRatio,
                child: VideoPlayer(videocontroller),
              ),
              VideoProgressIndicator(
                videocontroller,
                allowScrubbing: true,
                colors: VideoProgressColors(bufferedColor: Colors.white),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  Duration current = videocontroller.value.position;
                  print("==> current timestamp skip $current ");
                  videocontroller.seekTo(
                    current - Duration(seconds: 05),
                  );
                },
                icon: Icon(CupertinoIcons.gobackward_10),
              ),
              IconButton(
                onPressed: () async {
                  if (videocontroller.value.isPlaying) {
                    await videocontroller.pause();
                  } else {
                    await videocontroller.play();
                  }
                  setState(() {});
                },
                icon: Icon(
                  videocontroller.value.isPlaying
                      ? Icons.pause
                      : Icons.play_arrow,
                ),
              ),
              IconButton(
                onPressed: () {
                  Duration current = videocontroller.value.position;

                  videocontroller.seekTo(
                    current + Duration(seconds: 05),
                  );
                },
                icon: Icon(CupertinoIcons.goforward_10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
