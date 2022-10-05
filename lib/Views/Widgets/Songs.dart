
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sheba_music/Views/songDetailsBottomSheet/purchasedPaidSongs.dart';
import 'package:sheba_music/controllers/MiniPlayer_Artist_Controller/MiniPlayer_Artist_Controller.dart';

import '../../const/App_Colors.dart';
import '../../const/App_Text.dart';
import '../songDetailsBottomSheet/song1Details.dart';
import '../songDetailsBottomSheet/songPlay.dart';
import 'SongListTile.dart';

class Song1 extends StatefulWidget {
  const Song1({Key? key}) : super(key: key);

  @override
  State<Song1> createState() => _Song1State();
}

class _Song1State extends State<Song1> {
  MiniPlayerController miniplayercontroller = Get.put(MiniPlayerController());

  Widget miniPlayer() {

    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      color: Colors.transparent,
      width: double.infinity,
      height: 100,
      child: songPlay(),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SongListTile(
      singerName: "Marshmello,Bastille",
      songtitleimg: "assets/Images/Song1.png",
      songName: "Happier",
      songplay: (){
       miniplayercontroller.mini.value=true;
       setState((){
         miniplayercontroller.mini;
       });
      },
      details: (){
        backgroundsong1play(context);
      },
    );
  }
}

void SongPlay(BuildContext context) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext c) {
        return FractionallySizedBox(
          heightFactor: 0.12,
          child: songPlay(),
        );
      });
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
class Song2 extends StatelessWidget {
  const Song2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SongListTile(
      singerName: "Halsey",
      songtitleimg: "assets/Images/Song2.png",
      songName: "Without Me",
      songplay: (){},
      details: (){
        // backgroundsongplay(context);
      },



    );
  }
}
class Song3 extends StatelessWidget {
  const Song3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SongListTilePaid(
      singerName: "Liam Payne",
      songtitleimg: "assets/Images/Song3.png",
      songName: "Bedroom Floor",
      songplay: (){},
      details: (){
        purchasedPaidBeats(context);
      },
    );
  }
}

void purchasedPaidBeats(BuildContext context) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext c) {
        return FractionallySizedBox(
          heightFactor: 0.8,
          child: purchasedPaidSongs(
            songprice:  AppText(text: 'Total \$6 will Deduct', SizeofFont: 13,textcolor: white,),
          ),
        );
      });
}



class Song1withoutmore extends StatelessWidget {
  const Song1withoutmore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SongListTileWithoutTrailing(
      singerName: "Marshmello,Bastille",
      songtitleimg: "assets/Images/Song1.png",
      songName: "Happier",
      songplay: (){},

    );
  }
}
class Song2withoutmore extends StatelessWidget {
  const Song2withoutmore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SongListTileWithoutTrailing(
      singerName: "Halsey",
      songtitleimg: "assets/Images/Song2.png",
      songName: "Without Me",
      songplay: (){},




    );
  }
}