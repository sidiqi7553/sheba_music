import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/Select_Artist.dart';

import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

import 'Upload_Songs.dart';

class Create_Screen extends StatefulWidget {
  const Create_Screen({Key? key}) : super(key: key);

  @override
  State<Create_Screen> createState() => _Create_ScreenState();
}

class _Create_ScreenState extends State<Create_Screen> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          title: "Create Screen",
          action: ActionIcon(icon: SvgPicture.asset("assets/Icons/Wallet.svg"),),
        ),
      ),
      body: BackGround_Container(child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0,top: 20),
              child: ListTile(
                horizontalTitleGap: 20,
                title: AppText(
                  text: "Select What you want to create.",
                  SizeofFont: 15,
                  textcolor: white,
                ),
              ),
            ),


            GestureDetector(
              onTap: () {
                setState(() {
                  current = 2;

                });
                Get.to(Upload_Songs());
              },
              child: Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: 100,
                margin: EdgeInsets.symmetric(
                    horizontal: 35, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: grey,
                    border: current == 2
                        ? Border.all(color: primary)
                        : Border.all(color: Colors.transparent)

                ),
                child: Center(
                  child: AppText(text: "Upload Songs",
                    SizeofFont: 25,
                    WeightofFont: FontWeight.w500,
                    textcolor: white,),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  current = 1;

                });
                Get.to(Select_Artist());
              },
              child: Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: 100,
                margin: EdgeInsets.symmetric(
                    horizontal: 35, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: grey,
                    border: current == 1
                        ? Border.all(color: primary)
                        : Border.all(color: Colors.transparent)

                ),
                child: Center(
                  child: AppText(text: "Start Live Streaming",
                    SizeofFont: 25,
                    WeightofFont: FontWeight.w500,
                    textcolor: white,),
                ),
              ),
            ),


          ],
        ),
      )),
    );
  }
}
