import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';
import 'package:sheba_music/Views/Widgets/Artist_MiniProfile.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/Main_Pages_App_Bar.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

import '../../../songDetailsBottomSheet/artist_Expanded_sheet.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  var check = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: Main_Pages_App_Bar(
            title: AppText(text: "Profile", SizeofFont: 20, textcolor: white,)
        ),
      ),
body: BackGround_Container(child: SingleChildScrollView(
  child: Column(
    children: [

      Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 20.0, vertical: 20),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: primary,width: 2),
                borderRadius: BorderRadius.circular(20),

              ),
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
          ),
          Positioned(
            bottom: -20,
            left: 40,
            child: AvatarView(
              radius: 45,
              borderColor: Colors.yellow,
              avatarType: AvatarType.CIRCLE,
              backgroundColor: Colors.red,
              imagePath: "assets/Images/victoria.png",
              placeHolder: Container(
                child: Icon(
                  Icons.person,
                  size: 50,
                ),
              ),
              errorWidget: Container(
                child: Icon(
                  Icons.error,
                  size: 50,
                ),
              ),
            ),
          ),
          Positioned(
              right: 30,
              top: 230,
              child: followbtn())
        ],
      ),
      SizedBox(height: 30),
      Container(
        width: double.infinity,
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  check = !check;
                });
              },
              child: ListTile(
                leading: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(text: "Artist Name", SizeofFont: 20,WeightofFont: FontWeight.bold,textcolor: white,),
                    AppText(text: "Contact Email For Bookings", SizeofFont: 11,textcolor: yellow,),

                  ],
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(text: "@username", SizeofFont: 13,textcolor: white,),
                    AppText(text: "info@gmailemail.com", SizeofFont: 11,textcolor: white,),

                  ],
                ),
                trailing: Icon(
                  check
                      ? Icons.expand_more_outlined
                      : Icons.expand_less_outlined,
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: primary,
            )
          ],
        ),
      ),
      Container(
        child: check ? null : artist_Expanded_sheet(),
      ),


    ],
  ),
))
    );
  }
}
