import 'package:avatar_view/avatar_view.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:get/get.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/HomeTabs_items/Navigation_items/Artist_Profile.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

import '../../../../songDetailsBottomSheet/purchasedPaidSongs.dart';
import 'allow_for_tag.dart';

class Artist_MiniProfile_Page extends StatefulWidget {
  Artist_MiniProfile_Page({Key? key}) : super(key: key);

  @override
  State<Artist_MiniProfile_Page> createState() => _Artist_MiniProfileState();
}

class _Artist_MiniProfileState extends State<Artist_MiniProfile_Page> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(Artist_Profile());
      },
      child: ListTile(
        leading: AvatarView(
          radius: 30,
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
        title: AppText(
          text: "Artist Name",
          SizeofFont: 17,
          textcolor: white,
          WeightofFont: FontWeight.w600,
        ),
        subtitle: Row(
          children: [
            AppText(
              text: "100,000",
              SizeofFont: 12,
              textcolor: yellow,
            ),
            SizedBox(
              width: 8,
            ),
            AppText(
              text: "Followers",
              SizeofFont: 12,
              textcolor: white,
            ),
          ],
        ),
        trailing: followbtn1(),
      ),
    );
  }
}

class followbtn1 extends StatefulWidget {
  followbtn1({Key? key}) : super(key: key);

  @override
  State<followbtn1> createState() => _followbtnState();
}

class _followbtnState extends State<followbtn1> {
  bool current = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          current = !current;
        });
      },
      child: current
          ? GestureDetector(
        onTap: () {
          purchasedPaidBeats(context);
        },
        child: Container(
          height: 25,
          width: 100,
          decoration: BoxDecoration(
              color: primary,
              border: Border.all(
                color: primary,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    offset: Offset(-8, -8),
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 16,
                    inset: true),
                BoxShadow(
                    offset: Offset(8, 8),
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 16,
                    inset: true),
              ]
          ),
          child: Center(
            child: AppText(
              text: "Allow Tag",
              textcolor: white,
              SizeofFont: 15,
            ),
          ),
        ),
      )
          : Container(
        height: 25,
        width: 80,
        decoration: BoxDecoration(
          color: primary,
          border: Border.all(
            color: primary,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                offset: Offset(-8, -8),
                color: Colors.black.withOpacity(0.25),
                blurRadius: 16,
                inset: true),
            BoxShadow(
                offset: Offset(8, 8),
                color: Colors.black.withOpacity(0.25),
                blurRadius: 16,
                inset: true),
          ],
        ),
        child: Center(
          child: AppText(
            text: "Delete Tag",
            textcolor: white,
            SizeofFont: 12,
          ),
        ),
      ),
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
          child: allowfortag(
            songprice: AppText(
              text: 'Total \$6 will Deduct', SizeofFont: 13, textcolor: white,),
          ),
        );
      });
}

