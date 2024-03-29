import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/Wallet/Wallet_Main.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

import '../Screens/Guest_Pages/MyProfile_Navigation_Items/Notifications.dart';

class Main_Pages_App_Bar extends StatelessWidget {
  Widget? title;
  Widget? action, leading, nextscreen;
  PreferredSizeWidget? bottom;
  Color? bgcolor;

  Main_Pages_App_Bar({
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
          padding: const EdgeInsets.only(right: 8.0),
          child: ActionIcon(
            notification: Notifications(),
          ),
        ),
      ],
      bottom: bottom,
    );
  }
}

class Leadingtitle extends StatelessWidget {
  String leadingtext;
  String Welcome;

  Leadingtitle(
      {Key? key, required this.leadingtext, this.Welcome = "Welcome Back"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppText(
            text: leadingtext,
            SizeofFont: 17,
            WeightofFont: FontWeight.bold,
            textcolor: white,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: AppText(
              text: Welcome,
              SizeofFont: 12,
              textcolor: white,
            ),
          ),
        ],
      ),
    );
  }
}

class ActionIcon extends StatelessWidget {
  Widget? notification;

  ActionIcon({
    Key? key,
    this.notification,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Get.to(notification);
          },
          child: Container(
            height: 35,
            width: 35,
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
                height: 33,
                width: 33,
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
          width: 15,
        ),
        InkWell(
          onTap: () {
            Get.to(Wallet_Main());
          },
          child: Container(
            height: 35,
            width: 35,
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
                height: 33,
                width: 33,
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
