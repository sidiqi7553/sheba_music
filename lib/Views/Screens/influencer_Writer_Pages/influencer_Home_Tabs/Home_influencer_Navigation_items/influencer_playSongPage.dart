import 'package:audioplayers/audioplayers.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/Wallet/Wallet_Main.dart';
import 'package:sheba_music/Views/Widgets/Artist_MiniProfile.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/Comments.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';
import 'package:sheba_music/Views/songDetailsBottomSheet/song1Details.dart';
import 'package:sheba_music/Views/songDetailsBottomSheet/songPlay.dart';
import 'package:sheba_music/const/App_Text.dart';

import '../../../../../const/App_Colors.dart';


class influenceraudioplayer extends StatefulWidget {
  const influenceraudioplayer({Key? key}) : super(key: key);

  @override
  State<influenceraudioplayer> createState() => _audioplayerState();
}

class _audioplayerState extends State<influenceraudioplayer> {
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
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          nextscreen: Wallet_Main(),

          title: "Play Song Page ",
          action: ActionIcon(
            icon: SvgPicture.asset("assets/Icons/Wallet.svg"),
          ),
        ),
      ),
      body: BackGround_Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 28.0, vertical: 29),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      image: AssetImage(
                        "assets/Images/victoria.png",
                      ),
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                AppText(
                  text: "Song Name",
                  SizeofFont: 30,
                  textcolor: white,
                  WeightofFont: FontWeight.bold,
                ),
                AppText(
                  text: "Artist Name",
                  SizeofFont: 15,
                  textcolor: white,
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        formatTime(position),
                        style: TextStyle(color: yellow, fontSize: 12),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Slider(
                          activeColor: primary,
                          inactiveColor: containercolor,
                          thumbColor: white,
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
                      Text(
                        formatTime(duration - position),
                        style: TextStyle(color: white, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 29,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset("assets/Icons/Heart.svg",height: 20,),
                          AppText(text: "Like", SizeofFont: 10,textcolor: white,)
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset("assets/Icons/Add_to_Playlist.svg",height: 20,),
                          AppText(text: "Playlist", SizeofFont: 10,textcolor: white,)
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset("assets/Icons/Download.svg",height: 20,),
                          AppText(text: "Download", SizeofFont: 10,textcolor: white,)
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset("assets/Icons/Send.svg",height: 20,),
                          AppText(text: "Share", SizeofFont: 10,textcolor: white,)
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 29,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector (
                        onTap: (){
                          backgroundsong1play(context);
                        },
                        child: Icon(Icons.more_horiz,color: white,size: 30,)),
                    play_pause_Backward_forward_box(
                      height: 40,
                      width: 40,
                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/Icons/backward.svg"),
                            SvgPicture.asset("assets/Icons/backward.svg"),
                          ],
                        ),
                      ),) ,

                    GestureDetector(
                      onTap: () async {
                        if (isPlaying) {
                          await audioPlayer.pause();
                        } else {

                          await audioPlayer.resume();
                        }
                      },
                      child: play_pause_Backward_forward_box(
                        height: 70,
                        width: 70,
                        child: Center(
                          child:Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: primary,width: 2)
                            ),
                            child: Center(
                              child:  Icon(
                                isPlaying ? Icons.pause : Icons.play_arrow,color: white,size: 40,
                              ),
                            ),
                          ),
                        ),),
                    ),
                    play_pause_Backward_forward_box(
                      width: 40,
                      height: 40,
                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/Icons/forward.svg"),
                            SvgPicture.asset("assets/Icons/forward.svg"),
                          ],
                        ),
                      ),) ,
                    SvgPicture.asset("assets/Icons/ReUptoYourFollowers.svg",color: white,height: 25,)
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: AppText(text: "view Lyrics", SizeofFont: 15,textcolor: whiteforsubtitle,),
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return [
      if (duration.inHours > 0) hours,
      minutes,
      seconds,
    ].join(':');
  }
}
void backgroundsong1play(BuildContext context) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext c) {
        return FractionallySizedBox(
          heightFactor: 0.8,
          child: song1Details(),
        );
      });
}
