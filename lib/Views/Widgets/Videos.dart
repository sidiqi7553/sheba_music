import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sheba_music/Views/Widgets/Universal_Container.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

class Video extends StatelessWidget {
  String title;
  String subtitle;
  Widget? videopage;


  Video({Key? key,
  this.title="Simi - Youtube Video Name"
    ,this.videopage,

  this.subtitle="Marshmello,Bastille", }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(videopage);
      },
      child: Universal_Container(

        child: Stack(
          children: [
            Column(
              children: [
                Flexible(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/Images/LiveStreamimg.png"),
                            fit: BoxFit.fill),
                      ),
                    )),
                Flexible(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight:
                        Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      color: containercolor,
                    ),
                    child: Container(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            AppText(
                              text: title,
                              SizeofFont: 13,
                              textcolor: white,
                            ),
                            AppText(
                              text:
                              subtitle,
                              SizeofFont: 10,
                              textcolor:
                              whiteforsubtitle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
                top: 30,
                right: 0,
                left: 0,
                child: SvgPicture.asset(
                    "assets/Icons/Play.svg")
            )
          ],
        ),
        height: 100,
        widht: 200,
      ),
    );
  }
}
