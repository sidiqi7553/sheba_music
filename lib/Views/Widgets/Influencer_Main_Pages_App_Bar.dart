


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sheba_music/Views/Screens/Extra_Screens_of_Influencer/Create_Screen_Influencer.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

import '../Screens/Guest_Pages/MyProfile_Navigation_Items/Notifications.dart';
import '../Screens/Guest_Pages/Wallet/Wallet_Main.dart';

class Influencer_Main_Pages_App_Bar extends StatelessWidget {
  Widget? title;
  Widget? action, leading, nextscreen;
  PreferredSizeWidget? bottom;
  Color? bgcolor;

  Influencer_Main_Pages_App_Bar({
    Key? key,
    this.nextscreen,
    this.title,
    this.action,
    this.leading,
    this.bottom,
    this.bgcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: primary,
      title: title,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: ActionIcon(
            notification: Notifications(),
            upload: Create_Screen_Influencer(),
          ),
        ),
      ],
      bottom: bottom,
    );
  }
}

class LeadingtitleArtist extends StatelessWidget {
  String leadingtext;
  String Welcome;

  LeadingtitleArtist(
      {Key? key, required this.leadingtext, this.Welcome = "Welcome Back"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppText(
            text: leadingtext,
            SizeofFont: 20,
            WeightofFont: FontWeight.bold,
            textcolor: white,
          ),
          AppText(
            text: Welcome,
            SizeofFont: 14,
            textcolor: white,
          ),
        ],
      ),
    );
  }
}

class ActionIcon extends StatelessWidget {
  Widget? notification;
  Widget? upload;

  ActionIcon({
    Key? key,
    this.notification,
    this.upload,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Get.to(upload);
          },
          child: Container(
            height: 30,
            width: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(0.45),
                  Colors.white,
                ],
              ),
            ),
            child: Container(
                height: 28,
                width: 28,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: primary,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SvgPicture.asset("assets/Icons/upload.svg"),
                )),
          ),
        ),
        SizedBox(
          width: 10,
        ),

        InkWell(
          onTap: () {
            Get.to(notification);
          },
          child: Container(
            height: 30,
            width: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(0.45),
                  Colors.white,
                ],
              ),
            ),
            child: Container(
                height: 28,
                width: 28,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: primary,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SvgPicture.asset("assets/Icons/Notification.svg"),
                )),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: () {
            Get.to(Wallet_Main());
          },
          child: Container(
            height: 30,
            width: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(0.45),
                  Colors.white,
                ],
              ),
            ),
            child: Container(
                height: 28,
                width: 28,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: primary,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SvgPicture.asset("assets/Icons/Wallet.svg"),
                )),
          ),
        ),
      ],
    );
  }
}
