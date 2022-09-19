import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';


class SongListTile extends StatelessWidget {
  String songtitleimg;
  String songName;
  String singerName;
  VoidCallback? songplay;
  VoidCallback? details;

     SongListTile({Key? key,
     required this.songtitleimg,
     required this.songName,
     required this.singerName,
      this.songplay,
      this.details,

   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: songplay,
      child: ListTile(
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(songtitleimg),

              )
          ),
        ),
        title: AppText(text: songName, SizeofFont: 18,textcolor: white,),
        subtitle: AppText(text: singerName, SizeofFont: 12,textcolor: whiteforsubtitle,),
        trailing:  GestureDetector(
            onTap: details,
            child: Icon(Icons.more_vert,color: white,)),
      ),
    );
  }
}

class SongListTilePaid extends StatelessWidget {
  String songtitleimg;
  String songName;
  String singerName;
  VoidCallback? songplay;
  VoidCallback? details;
  SongListTilePaid({Key? key,
    required this.songtitleimg,
    required this.songName,
    required this.singerName,
    this.songplay,
    this.details,


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: songplay,
      child: ListTile(
        leading: Stack(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(songtitleimg),

                  )
              ),
            ),
            Positioned(
                top: 5,
                right: 5,
                child: Container(
              height: 10,
              width: 20,
              decoration: BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.circular(4)
              ),
                  child: Center(
                    child: AppText(text: "paid",SizeofFont: 5,textcolor: white,),
                  ),
            ))
          ],
        ),
        title: AppText(text: songName, SizeofFont: 18,textcolor: white,),
        subtitle: AppText(text: singerName, SizeofFont: 12,textcolor: whiteforsubtitle,),
        trailing: GestureDetector(
            onTap: details,
            child: Icon(Icons.more_vert,color: white,)),
      ),
    );
  }
}

class SongListTileWithoutTrailing extends StatelessWidget {
  String songtitleimg;
  String songName;
  String singerName;
  VoidCallback? songplay;


  SongListTileWithoutTrailing({Key? key,
    required this.songtitleimg,
    required this.songName,
    required this.singerName,
    this.songplay,


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: songplay,
      child: ListTile(
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(songtitleimg),

              )
          ),
        ),
        title: AppText(text: songName, SizeofFont: 18,textcolor: white,),
        subtitle: AppText(text: singerName, SizeofFont: 12,textcolor: whiteforsubtitle,),

      ),
    );
  }
}


