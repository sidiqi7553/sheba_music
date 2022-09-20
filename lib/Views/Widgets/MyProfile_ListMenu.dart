import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

import 'Icon_container.dart';

class MyProfile_ListMenu extends StatelessWidget {
  String title;
  String svgicon;
  Widget? nextpage;
   MyProfile_ListMenu({Key? key,
     required this.title,
     this.nextpage,
     required this.svgicon


   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: (){
              Get.to(nextpage);
            },
            child: ListTile(
              leading: Container(
                height: 35,
                width: 35,
                child: Icon_Container(
                  height: 35,
                  width: 35,
                  svgicon: svgicon,
                ),
              ),
              title: AppText(
                text: title,
                SizeofFont: 15,
                textcolor: white,

              ),
              trailing: Icon(Icons.arrow_forward_ios,color: white,size: 18,),
            ),
          ),
        ),
        Container(
          height: 0.3,
          width: double.infinity,
          margin: EdgeInsets.only(left: 30),
          color: whiteforsubtitle,
        ),
      ],
    );
  }
}


class MyProfile_ListMenuformessenger extends StatelessWidget {
  String title;
  String svgicon;
  Widget? nextpage;
  MyProfile_ListMenuformessenger({Key? key,
    required this.title,
    this.nextpage,
    required this.svgicon


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: (){
              Get.to(nextpage);
            },
            child: ListTile(
              leading: Container(
                height: 35,
                width: 35,
                child: Icon_Container(
                  height: 35,
                  width: 35,
                  svgicon: svgicon,
                ),
              ),
              title: AppText(
                text: title,
                SizeofFont: 15,
                textcolor: white,

              ),
              trailing: Container(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: primary,
                        shape: BoxShape.circle,

                      ),
                      child: Center(
                        child: AppText(text: "08", SizeofFont: 10,textcolor: white,),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios,color: white,size: 18,),
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          height: 0.3,
          width: double.infinity,
          margin: EdgeInsets.only(left: 30),
          color: whiteforsubtitle,
        ),
      ],
    );
  }
}