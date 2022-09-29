import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sheba_music/Views/Screens/Producer_Pages/Producer_menu.dart';
import 'package:sheba_music/Views/Screens/influencer_Pages/influencer_menu.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Logo.dart';
import 'package:sheba_music/const/App_Text.dart';

import '../../../const/appConstants.dart';
import '../Artists_Pages/artist_menu.dart';
import '../Guest_Pages/Select_Artist.dart';

import '../Song_Writer_Pages/SongWrite_menu.dart';


class SelectType extends StatefulWidget {
  const SelectType({Key? key}) : super(key: key);

  @override
  State<SelectType> createState() => _SelectTypeState();
}

class _SelectTypeState extends State<SelectType> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BackGround_Container(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 70,
              ),
              App_Logo(
                height: 150,
                widht: 150,
                logoheight: 100,
              ),
              SizedBox(
                height: 40,
              ),
              AppText(
                text: "Log in as",
                SizeofFont: 25,
                WeightofFont: FontWeight.bold,
                textcolor: white,
              ),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    current = 0;
                  });
                  Get.to(Select_Artist());
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  margin: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: grey,
                      border: current == 0
                          ? Border.all(color: white)
                          : Border.all(color: Colors.transparent)),
                  child: Center(
                    child: AppText(
                      text: "Guest",
                      SizeofFont: 20,
                      WeightofFont: FontWeight.w500,
                      textcolor: white,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () async {
                      setState(() {
                        current = 1;
                      });
                      final prefs = await SharedPreferences.getInstance();

                      prefs.setString(
                          AppConstant.usertype, AppConstant.userSongWriter);

                      Get.to(Song_Writer_Menu());
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 100,
                      margin: EdgeInsets.only(
                          left: 25, right: 5, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: grey,
                          border: current == 1
                              ? Border.all(color: white)
                              : Border.all(color: Colors.transparent)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppText(
                            text: "Song",
                            SizeofFont: 20,
                            WeightofFont: FontWeight.w500,
                            textcolor: white,
                          ),
                          AppText(
                            text: "Writer",
                            SizeofFont: 20,
                            WeightofFont: FontWeight.w500,
                            textcolor: white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      setState(() {
                        current = 2;
                      });
                      final prefs = await SharedPreferences.getInstance();
                      prefs.setString(
                          AppConstant.usertype, AppConstant.userArtist);

                      Get.to(Artist_Menu());
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 100,
                      margin: EdgeInsets.only(
                          right: 25, left: 5, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: grey,
                          border: current == 2
                              ? Border.all(color: white)
                              : Border.all(color: Colors.transparent)),
                      child: Center(
                        child: AppText(
                          text: "Artist",
                          SizeofFont: 20,
                          WeightofFont: FontWeight.w500,
                          textcolor: white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () async {
                      setState(() {
                        current = 3;
                      });
                      final prefs = await SharedPreferences.getInstance();

                      prefs.setString(
                          AppConstant.usertype, AppConstant.userBeatProducers);
                      Get.to(Producer_Menu());
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 100,
                      margin: EdgeInsets.only(
                          left: 25, right: 5, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: grey,
                          border: current == 3
                              ? Border.all(color: white)
                              : Border.all(color: Colors.transparent)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppText(
                            text: "Beat",
                            SizeofFont: 20,
                            WeightofFont: FontWeight.w500,
                            textcolor: white,
                          ),
                          AppText(
                            text: "Producer",
                            SizeofFont: 20,
                            WeightofFont: FontWeight.w500,
                            textcolor: white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      setState(() {
                        current = 4;
                      });
                      final prefs = await SharedPreferences.getInstance();

                      prefs.setString(
                          AppConstant.usertype, AppConstant.userInfluencers);
                      Get.to(influencer_Menu());
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 100,
                      margin: EdgeInsets.only(
                          right: 25, left: 5, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: grey,
                          border: current == 4
                              ? Border.all(color: white)
                              : Border.all(color: Colors.transparent)),
                      child: Center(
                        child: AppText(
                          text: "Influencer",
                          SizeofFont: 20,
                          WeightofFont: FontWeight.w500,
                          textcolor: white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
