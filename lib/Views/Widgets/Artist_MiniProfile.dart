import 'package:avatar_view/avatar_view.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:get/get.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/HomeTabs_items/Navigation_items/Artist_Profile.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';



class Artist_MiniProfile extends StatefulWidget {
   Artist_MiniProfile({Key? key}) : super(key: key);

  @override
  State<Artist_MiniProfile> createState() => _Artist_MiniProfileState();
}

class _Artist_MiniProfileState extends State<Artist_MiniProfile> {


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(Artist_Profile());
      },
      child: ListTile(
        leading: AvatarView(
          radius: 30,
          borderColor: Colors.yellow,
          avatarType: AvatarType.CIRCLE,
          backgroundColor: Colors.red,
          imagePath:
          "assets/Images/victoria.png",
          placeHolder: Container(
            child: Icon(Icons.person, size: 50,),
          ),
          errorWidget: Container(
            child: Icon(Icons.error, size: 50,),
          ),
        ),
        title: AppText(text: "Artist Name", SizeofFont: 17,textcolor: white,WeightofFont: FontWeight.w600,),
        subtitle: Row(
          children: [
            AppText(text: "100,000", SizeofFont: 12,textcolor: yellow,),
            SizedBox(width: 8,),
            AppText(text: "Followers", SizeofFont: 12,textcolor: white,),
          ],
        ),
        trailing: followbtn(),

      ),
    );
  }
}

class followbtn extends StatefulWidget {
   followbtn({Key? key}) : super(key: key);

  @override
  State<followbtn> createState() => _followbtnState();
}

class _followbtnState extends State<followbtn> {
bool current = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState((){
          current = !current;
        });
      },
      child: current?
      Container(
        height: 25,
        width: 100,
        decoration: BoxDecoration(
            color: textformfieldColor,
            border: Border.all(color: primary,),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  offset: Offset(-8,-8),
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 16,
                  inset: true

              ),
              BoxShadow(
                  offset: Offset(8,8),
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 16,
                  inset: true
              ),

            ]
        ),
        child: Center(
          child: AppText(text: "Following",textcolor: white,SizeofFont: 15,),
        ),
      )
          :Container(
        height: 25,
        width: 80,
        decoration: BoxDecoration(
          color: primary,
            boxShadow: [
              BoxShadow(
                offset: Offset(-6,-6),
                color: Colors.white.withOpacity(0.1),
                blurRadius: 12,


              ),
              BoxShadow(
                offset: Offset(6,6),
                color: Colors.black.withOpacity(0.25),
                blurRadius: 12,

              )
            ],
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: AppText(text: "Follow",textcolor: white,SizeofFont: 15,),
        ),
      ),
    );
  }
}
