import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

class MyProfile_Expand_Sheet extends StatelessWidget {
  const MyProfile_Expand_Sheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(text: "100,000", SizeofFont: 17,textcolor: white,),
                    AppText(text: "Followers", SizeofFont: 12,textcolor: yellow,WeightofFont: FontWeight.w600,),

                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    AppText(text: "36,767,544", SizeofFont: 17,textcolor: white,),
                    AppText(text: "Total Account Plays", SizeofFont: 12,textcolor: yellow,WeightofFont: FontWeight.w600,),

                  ],
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0,right: 89,top: 5,bottom: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(text: "100,000", SizeofFont: 17,textcolor: white,),
                    AppText(text: "Monthly Listeners", SizeofFont: 12,textcolor: yellow,WeightofFont: FontWeight.w600,),

                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    AppText(text: "100", SizeofFont: 17,textcolor: white,),
                    AppText(text: 'Following', SizeofFont: 12,textcolor: yellow,WeightofFont: FontWeight.w600,),

                  ],
                ),

              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Container(

                          width: MediaQuery.of(context).size.width*.45,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                AppText(text: "Genre:", SizeofFont: 13,textcolor: white,WeightofFont: FontWeight.bold,),
                                AppText(text: "English", SizeofFont: 13,textcolor: white,)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0.0),
                      child: Container(

                        width: MediaQuery.of(context).size.width*0.5,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              AppText(text: "Member Since:", SizeofFont: 13,textcolor: white,WeightofFont: FontWeight.bold,),
                              AppText(text: "31 Aug", SizeofFont: 13,textcolor: white,)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            height: 1,
            width: double.infinity,
            color: white,

          ),

          Container(
            width: MediaQuery.of(context).size.width*0.7,

            child: Padding(
              padding: const EdgeInsets.only(left: 22.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset("assets/Icons/fbsocial.svg",height: 30,),
                  SvgPicture.asset("assets/Icons/insta.svg",height: 30),
                  SvgPicture.asset("assets/Icons/twitter.svg",height: 30),
                  SvgPicture.asset("assets/Icons/youtube.svg",height: 30),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            height: 1,
            width: double.infinity,
            color: white,

          ),
          Container(
            height: 70,
            child: Padding(
              padding: const EdgeInsets.only(left: 45.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(text: "Report Content", SizeofFont: 14,textcolor: whiteforsubtitle,),
                  AppText(text: "Block Artist", SizeofFont: 14,textcolor: whiteforsubtitle,),

                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10,bottom: 20),
            height: 1,
            width: double.infinity,
            color: primary,
          )
        ],
      ),
    );
  }
}
