import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/LibraryTabs_items/Navigation_Items/MyPlayaList.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/Universal_Container.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

import 'Create_Playlist.dart';

class Select_Create_Playlist extends StatefulWidget {

  const Select_Create_Playlist({Key? key}) : super(key: key);

  @override
  State<Select_Create_Playlist> createState() => _Select_Create_PlaylistState();
}

class _Select_Create_PlaylistState extends State<Select_Create_Playlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          title: "Playlist Name",
          action: ActionIcon(icon: SvgPicture.asset("assets/Icons/Wallet.svg"),),
        )
        ,
      ),
      body: BackGround_Container(child: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              margin: const EdgeInsets.symmetric(
                  horizontal: 00, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(25)),
              child: ListView.builder(
                // controller: scrollController,
                  itemCount: 3,

                  itemBuilder: (ctx, index) {
                    if (index == 0) {
                      return
                        GestureDetector(
                          onTap: () {
                            Get.to(Create_Playlist());
                          },
                          child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10, top: 10),
                              child: Universal_Container(

                                height: 170,
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
                                                    10),),
                                          ),
                                          child: Center(
                                            child: SvgPicture.asset(
                                                "assets/Icons/Plus.svg",height: 50,),
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
                                              left: 18.0, top: 8,),
                                            child: Center(
                                              child: AppText(
                                                text: "Create Playlist",
                                                SizeofFont: 16,
                                                textcolor: white,
                                              ),
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

                            height: 170,
                            widht: 150,

                            child: Column(
                              children: [
                                Flexible(
                                    flex: 3,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius
                                            .only(
                                          topRight: Radius.circular(
                                              10),
                                          topLeft: Radius.circular(
                                              10),),
                                        color: Colors.transparent,
                                        image: DecorationImage(

                                            image: AssetImage(
                                                "assets/Images/LiveStreamimg.png"),
                                            fit: BoxFit.fitWidth),
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
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
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



          ],
        ),
      )
      ),

    );
  }
}
