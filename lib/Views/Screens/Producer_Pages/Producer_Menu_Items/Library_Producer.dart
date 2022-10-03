import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sheba_music/Views/Screens/Extra_Screens_Of_Producers/Producer_Create_Screen.dart';
import 'package:sheba_music/Views/Screens/Extra_Screens_of_Artist/Select_Create_Playlist.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/LibraryTabs_items/Navigation_Items/Downloads_song.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/LibraryTabs_items/Navigation_Items/Following_Artist.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/LibraryTabs_items/Navigation_Items/MyPlayaList.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/LibraryTabs_items/Navigation_Items/Purchased%20song.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/Icon_container.dart';
import 'package:sheba_music/Views/Widgets/Main_Pages_App_Bar.dart';
import 'package:sheba_music/Views/Widgets/Universal_Container.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

import '../../../Widgets/Artist_Main_Pages_App_Bar.dart';
import '../../Guest_Pages/LibraryTabs_items/Navigation_Items/Liked_songs.dart';


class LibraryProducer extends StatelessWidget {
  const LibraryProducer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: Artist_Main_Pages_App_Bar(
            upload: Producer_Create_Screen(),
            title: AppText(text: "Library", SizeofFont: 20, textcolor: white,)
        ),
      ),
      body: BackGround_Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 170,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  margin: const EdgeInsets.symmetric(
                      horizontal: 00, vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(25)),
                  child: ListView.builder(
                    // controller: scrollController,
                      itemCount: 20,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) {
                        if (index == 0) {
                          return
                            GestureDetector(
                              onTap: () {
                                Get.to(Select_Create_Playlist());
                              },
                              child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, right: 10, top: 10),
                                  child: Universal_Container(

                                    height: 120,
                                    widht: 150,

                                    child: Column(
                                      children: [
                                        Flexible(
                                            flex: 4,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: containercolor,
                                                  border: Border.all(
                                                      color: primary),
                                                  borderRadius: BorderRadius
                                                      .only(
                                                    topRight: Radius.circular(
                                                        10),
                                                    topLeft: Radius.circular(
                                                        10),)
                                              ),
                                              child: Center(
                                                child: SvgPicture.asset(
                                                    "assets/Icons/Plus.svg"),
                                              ),
                                            )),
                                        Flexible(
                                          flex: 3,
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
                                                  left: 18.0, top: 8,),
                                                child: AppText(
                                                  text: "Create Playlist",
                                                  SizeofFont: 16,
                                                  textcolor: white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                              ),
                            );
                        }
                        return GestureDetector(
                          onTap: () {
                            Get.to(MyPlayaList());
                          },
                          child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10, top: 10),
                              child: Universal_Container(

                                height: 120,
                                widht: 150,

                                child: Column(
                                  children: [
                                    Flexible(
                                        flex: 4,
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
                                      flex: 3,
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
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              children: [
                                                AppText(
                                                  text: "My Playlist 1",
                                                  SizeofFont: 16,
                                                  textcolor: white,
                                                ),
                                                AppText(
                                                  text:
                                                  "8 Songs",
                                                  SizeofFont: 12,
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
                              )
                          ),
                        );
                      }),
                ),
                GestureDetector(
                  onTap: (){
                    Get.to(Downloads_song());
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
                            svgicon: "assets/Icons/Download.svg",
                            iconsize: 30,

                          ),
                        ),
                        title: AppText(
                          text: "Download Songs / Beats",
                          SizeofFont: 15, textcolor: white,
                        ),
                        subtitle: AppText(
                          text: "8 songs",
                          SizeofFont: 12, textcolor: whiteforsubtitle,
                        ),
                      ),
                    ),

                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Get.to(Liked_songs());
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
                            svgicon: "assets/Icons/Heart.svg",
                            iconsize: 30,

                          ),
                        ),
                        title: AppText(
                          text: "Liked Songs / Beats",
                          SizeofFont: 15, textcolor: white,
                        ),
                        subtitle: AppText(
                          text: "8 songs",
                          SizeofFont: 12, textcolor: whiteforsubtitle,
                        ),
                      ),
                    ),

                  ),
                ),
                GestureDetector(

                  onTap: (){
                    Get.to(Purchasedsong());
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
                            svgicon: "assets/Icons/Lock.svg",
                            iconsize: 30,

                          ),
                        ),
                        title: AppText(
                          text: "Purchased Songs / Beats",
                          SizeofFont: 15, textcolor: white,
                        ),
                        subtitle: AppText(
                          text: "8 songs",
                          SizeofFont: 12, textcolor: whiteforsubtitle,
                        ),
                      ),
                    ),

                  ),
                ),
                GestureDetector(

                  onTap: (){
                    Get.to(Following_Artist());
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
                            svgicon: "assets/Icons/Profile.svg",
                            iconsize: 30,

                          ),
                        ),
                        title: AppText(
                          text: "Following Producers",
                          SizeofFont: 15, textcolor: white,
                        ),
                        subtitle: AppText(
                          text: "20 producers",
                          SizeofFont: 12, textcolor: whiteforsubtitle,
                        ),
                      ),
                    ),

                  ),
                ),


              ],
            ),
          )
      ),
    );
  }
}
