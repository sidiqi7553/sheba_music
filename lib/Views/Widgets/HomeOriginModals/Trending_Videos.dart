import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sheba_music/Views/Widgets/Videos.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';


import '../../Screens/Guest_Pages/HomeTabs_items/Navigation_items/Videopage.dart';
import '../LiveStreaming_Videos.dart';

class Trending_Videos extends StatelessWidget {
  String title;
  Widget? seeAll,videopage;
   Trending_Videos({Key? key,this.title="Trending Videos",this.seeAll,this.videopage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [ListTile(
          title: AppText(
            text: title,
            SizeofFont: 20,
            textcolor: white,
          ),
          trailing: InkWell(
            onTap: () {
              Get.to(seeAll);
            },
            child: AppText(
              text: "See All",
              SizeofFont: 15,
              textcolor: primary,
            ),
          ),
        ),
          Container(
            height: 190,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 00, vertical: 20),
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(25)),
            child: ListView.builder(
              // controller: scrollController,
                itemCount: 20,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return GestureDetector(

                    child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10, top: 10),
                        child: Video(
                          videopage: Videopage(),
                        )),
                  );
                }),
          ),],
      ),
    );
  }
}
