import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/MyProfile_Navigation_Items/Add_social_media.dart';
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
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(text: "100,000", SizeofFont: 17,textcolor: white,),
                    AppText(text: "Followers", SizeofFont: 12,textcolor: yellow,WeightofFont: FontWeight.w600,),
                   SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AppText(text: "Language:", SizeofFont: 13,textcolor: white,WeightofFont: FontWeight.bold,),
                        AppText(text: "English", SizeofFont: 13,textcolor: white,)
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    AppText(text: "100", SizeofFont: 17,textcolor: white,),

                    AppText(text: 'Following', SizeofFont: 12,textcolor: yellow,WeightofFont: FontWeight.w600,),
                    SizedBox(height: 20,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AppText(text: "Member Since:", SizeofFont: 13,textcolor: white,WeightofFont: FontWeight.bold,),
                        AppText(text: "31 Aug", SizeofFont: 13,textcolor: white,)
                      ],
                    ),
                  ],
                ),

              ],
            ),
          ),

       
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            height: 1,
            width: double.infinity,
            color: white,

          ),

          Container(
            width: MediaQuery.of(context).size.width,

            child: Padding(
              padding: const EdgeInsets.only(left: 22.0,bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset("assets/Icons/fbsocial.svg",height: 20,),
                  SvgPicture.asset("assets/Icons/insta.svg",height: 20),
                  SvgPicture.asset("assets/Icons/twitter.svg",height: 20),
                  SvgPicture.asset("assets/Icons/youtube.svg",height: 20),
                  InkWell(
                      onTap: (){
                        Get.to(Add_social_media());
                      },
                      child: AppText(text: "Add Social Media", SizeofFont: 15,textcolor: white,))
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
