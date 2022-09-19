
import 'package:flutter/material.dart';
import 'package:sheba_music/Views/songDetailsBottomSheet/purchasedPaidSongs.dart';

import '../songDetailsBottomSheet/song1Details.dart';
import '../songDetailsBottomSheet/songPlay.dart';
import 'SongListTile.dart';

class Song1 extends StatelessWidget {
  const Song1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SongListTile(
      singerName: "Marshmello,Bastille",
      songtitleimg: "assets/Images/Song1.png",
      songName: "Happier",
      songplay: (){
        SongPlay(context);
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
          child: purchasedPaidSongs(),
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