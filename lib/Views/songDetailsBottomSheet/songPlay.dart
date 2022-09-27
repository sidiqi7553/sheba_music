import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sheba_music/Example.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

import '../Screens/Guest_Pages/HomeTabs_items/Navigation_items/playSongPage.dart';
import '../Widgets/GlassBox.dart';

class songPlay extends StatefulWidget {
  songPlay({Key? key}) : super(key: key);

  @override
  State<songPlay> createState() => _songPlayState();
}

class _songPlayState extends State<songPlay> {
  final audioPlayer = AudioPlayer();

  bool isPlaying = false;

  Duration duration = Duration.zero;

  Duration position = Duration.zero;

  @override
  void initState() {
    super.initState();

    setAudio();

    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });
    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });
    audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }

  Future setAudio() async {
    audioPlayer.setReleaseMode(ReleaseMode.loop);
//  final result = await FilePicker.platform.pickFiles();
//
//     if (result != null){
//       final file = File(result.files.single.path!);
    final Player = AudioCache(prefix: 'assets/audio/');
    final url = await Player.load(
        'Billie_Eilish_-_Happier_Than_Ever_(Jesusful.com).mp3');
    audioPlayer.setSourceUrl(url.path);
  }

  @override
  Widget build(BuildContext context) {
    return GlassBox(
        width: double.infinity,
        height: double.infinity,
        child: GestureDetector(
          onTap: () {
            Get.to(audioplayer());
          },
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image(
                      image: AssetImage("assets/Images/Song1.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText(
                        text: "Happier",
                        SizeofFont: 15,
                        textcolor: white,
                      ),
                      AppText(
                        text: "Marshmello,Bastille",
                        SizeofFont: 12,
                        textcolor: whiteforsubtitle,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.48,
                        child: Slider(
                          min: 0,
                          max: duration.inSeconds.toDouble(),
                          value: position.inSeconds.toDouble(),
                          onChanged: (value) async {
                            final position = Duration(seconds: value.toInt());
                            await audioPlayer.seek(position);
                            await audioPlayer.resume();
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Container(
                          width: 150,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(
                                "assets/Icons/Heart.svg",
                                height: 20,
                              ),
                              play_pause_Backward_forward_box(
                                child: Center(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                          "assets/Icons/backward.svg"),
                                      SvgPicture.asset(
                                          "assets/Icons/backward.svg"),
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () async {
                                  if (isPlaying) {
                                    await audioPlayer.pause();
                                  } else {
                                    await audioPlayer.resume();
                                  }
                                },
                                child: play_pause_Backward_forward_box(
                                  height: 40,
                                  width: 40,
                                  child: Center(
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: primary, width: 2)),
                                      child: Center(
                                        child: Icon(
                                          isPlaying
                                              ? Icons.pause
                                              : Icons.play_arrow,
                                          color: white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              play_pause_Backward_forward_box(
                                child: Center(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                          "assets/Icons/forward.svg"),
                                      SvgPicture.asset(
                                          "assets/Icons/forward.svg"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class play_pause_Backward_forward_box extends StatelessWidget {
  double height, width;
  Widget child;

  play_pause_Backward_forward_box(
      {Key? key, this.width = 25, this.height = 25, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff4F38585E).withOpacity(0.5),
                Color(0xff180F28),
              ]),
          boxShadow: [
            BoxShadow(
              offset: Offset(5.27, 5.27),
              blurRadius: 40,
              color: Color(0xff180F28),
            ),
            BoxShadow(
              offset: Offset(-5.27, -5.27),
              blurRadius: 40,
              color: Color(0xff4F38585E).withOpacity(0.5),
            ),
          ]),
      child: child,
    );
  }
}
