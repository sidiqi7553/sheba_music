import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

import '../../Widgets/Songs.dart';



class Trending_Beats extends StatelessWidget {
  String title;
  Widget? seeAll;
   Trending_Beats({Key? key,this.title="Trending Beats",this.seeAll}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            title: AppText(
              text: title,
              SizeofFont: 18,
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: Song1withoutmore()),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child:Song1withoutmore()),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: Song2withoutmore()),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: Song2withoutmore()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
