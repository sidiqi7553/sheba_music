import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/LibraryTabs_items/Navigation_Items/Downloads_song.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/Icon_container.dart';
import 'package:sheba_music/Views/Widgets/Universal_Container.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

import 'Artist_Notification_Settings.dart';

class Artist_Notifications extends StatelessWidget {
  const Artist_Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          nextscreen: Artist_Notification_Settings(),
          title: "Notifications",
          action: ActionIcon(icon: SvgPicture.asset("assets/Icons/Setting.svg"),),
        ),
      ),
      body: BackGround_Container(
        child:SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20, top: 10, bottom: 30),
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.9,
                    child: ListView.builder(
                        itemCount: 5,

                        itemBuilder: (ctx, index) {
                          return GestureDetector(
                            onTap: (){

                            },
                            child: Universal_Container(
                              height: 90,
                              border: Border.all(color: primary),
                              widht:MediaQuery.of(context).size.width*0.8,
                              child: Center(
                                child: ListTile(
                                  leading: SizedBox(
                                    height: 60,
                                    width: 60,
                                    child: Icon_Container(
                                      height: 60,
                                      width: 60,
                                      svgicon: "assets/Icons/NotAdd.svg",
                                      iconsize: 30,

                                    ),
                                  ),
                                  title: AppText(
                                    text: "Payment Request From User",
                                    SizeofFont: 15, textcolor: white,WeightofFont: FontWeight.w800,
                                  ),
                                  subtitle: AppText(
                                    text: "1 Feb 22 • #123467",
                                    SizeofFont: 12, textcolor: whiteforsubtitle,
                                  ),
                                  trailing:AppText(
                                    text: "\$ 100",
                                    SizeofFont: 15, textcolor: white,WeightofFont: FontWeight.bold,
                                  ),
                                ),
                              ),

                            ),
                          );
                        }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
