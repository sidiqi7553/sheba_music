import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';


import '../Widgets/Artist_MiniProfile.dart';
import '../Widgets/GlassBox.dart';
import '../Widgets/Icon_container.dart';
import '../Widgets/Songs.dart';

class song1Details extends StatefulWidget {
  const song1Details({Key? key}) : super(key: key);

  @override
  State<song1Details> createState() => _song1DetailsState();
}

class _song1DetailsState extends State<song1Details> {
  bool current = false;
  @override
  Widget build(BuildContext context) {
    return GlassBox(
        width: double.infinity,
        height: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0,right: 18),
              child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.close,color: white,size: 24,)),

            ),
          ),
          Song1withoutmore(),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child:
            AppText(text: "More From Artist", SizeofFont: 17,textcolor: white,WeightofFont: FontWeight.w600,),
          ),
          SizedBox(height: 15,),
          Artist_MiniProfile(),
          listtileRow(
            svgicon: "assets/Icons/Heart.svg",
            title: "Like “Song Name”",
          ),
          listtileRow(svgicon: "assets/Icons/Add_to_Playlist.svg", title: "Add to Playlist"),
          listtileRow(svgicon: "assets/Icons/ReUptoYourFollowers.svg", title: "Re-Up to Your Followers"),
          listtileRow(svgicon: "assets/Icons/Chat.svg", title: "View Comments (120)"),
          listtileRow(svgicon: "assets/Icons/Download.svg", title: "Download This Song"),
          listtileRow(svgicon: "assets/Icons/InfoSquare.svg", title: "More Info"),

          
        ],
    ),
    );
  }
}

class listtileRow extends StatelessWidget {
  String svgicon;
  String title;
  double height ,width,iconsize;
  listtileRow({Key? key,
    required this.svgicon,
    this.height=35,
    this.width=35,
    this.iconsize=20,
     required this.title,

   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 0.0,left: 30,top: 20),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
      Neumorphic(
      style: NeumorphicStyle(

      shadowDarkColor: black,
        shadowLightColor: white,
        shape: NeumorphicShape.flat,
        boxShape: NeumorphicBoxShape.circle(),
        depth:1,
        lightSource: LightSource.topLeft,
        color: black.withOpacity(0.1),
      ),
      child: Center(
        child: Container(
          height: height,
          width: width,

          child: Center(
            child: SvgPicture.asset(svgicon,height: iconsize,),
          ),
        ),
      ),
    ),
          SizedBox(width: MediaQuery.of(context).size.width*0.1,),
          Expanded(child: AppText(text: title, SizeofFont: 16,textcolor: white,))
        ],
      ),
    );
  }
}
