import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/Wallet/Wallet_Main.dart';
import 'package:sheba_music/Views/Widgets/Artist_MiniProfile.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/Comments.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ProducerVideopage extends StatefulWidget {
  const ProducerVideopage({Key? key}) : super(key: key);

  @override
  State<ProducerVideopage> createState() => _VideopageState();
}

class _VideopageState extends State<ProducerVideopage> {
  final videoURL = "https://www.youtube.com/watch?v=Lm8p5rlrSkY";
  late YoutubePlayerController _controller;

  // late VideoPlayerController _controller;
  // Duration duration = Duration.zero;
  // Duration position = Duration.zero;

  @override
  void initState() {
    super.initState();
    // _controller = VideoPlayerController.asset("assets/video/kana_yari.mp4")
    //   ..initialize().then((_) {
    //     // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
    //     setState(() {});
    //   });

    final videoID = YoutubePlayer.convertUrlToId(videoURL);

    _controller = YoutubePlayerController(
        initialVideoId: videoID!,
        flags: YoutubePlayerFlags(
          autoPlay: true,
          captionLanguage: 'en',
          forceHD: true,
          loop: true,
        ));
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          nextscreen: Wallet_Main(),
          title: "Video Page",
          action: ActionIcon(
            icon: SvgPicture.asset("assets/Icons/Wallet.svg"),
          ),
        ),
      ),
      body: BackGround_Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
                onReady: () {
                  debugPrint("Ready");
                },
                bottomActions: [
                  CurrentPosition(),
                  ProgressBar(
                    isExpanded: true,
                    colors: ProgressBarColors(
                        playedColor: primary, handleColor: white),
                  ),
                  RemainingDuration(),
                  PlaybackSpeedButton(),
                  FullScreenButton(),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Artist_MiniProfile(),
              Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: textformfieldColor,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(26, 26),
                        blurRadius: 12,
                        color: Colors.black.withOpacity(0.25),
                        inset: true,
                      ),
                      BoxShadow(
                        offset: const Offset(-16, -16),
                        blurRadius: 12,
                        color: Colors.white.withOpacity(0.1),
                        inset: true,
                      ),
                    ],
                  ),
                  child: Comments()),

              // Container(
              //   height: 300,
              //   width: double.infinity,
              //   margin: EdgeInsets.symmetric(horizontal: 25,vertical: 00),
              //   child: Center(
              //     child: _controller.value.isInitialized
              //         ? AspectRatio(
              //       aspectRatio: _controller.value.aspectRatio,
              //       child: VideoPlayer(_controller),
              //     )
              //         : Container(),
              //   ),
              // ),
            ],
          ),
        ),
      ),

      // floatingActionButton: Stack(
      //   children: [
      //     FloatingActionButton(
      //       onPressed: () {
      //         setState(() {
      //           _controller.value.isPlaying
      //               ? _controller.pause()
      //               : _controller.play();
      //         });
      //       },
      //       child: Icon(
      //         _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
