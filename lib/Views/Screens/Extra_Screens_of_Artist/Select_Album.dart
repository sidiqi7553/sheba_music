import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/LibraryTabs_items/Navigation_Items/MyPlayaList.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/GlassBox.dart';
import 'package:sheba_music/Views/Widgets/Universal_Container.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';
import 'package:sheba_music/Views/Widgets/mySearchBar.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

import 'Select_Album_2.dart';

class Select_Album extends StatefulWidget {
  const Select_Album({Key? key}) : super(key: key);

  @override
  State<Select_Album> createState() => _Select_AlbumState();
}

class _Select_AlbumState extends State<Select_Album> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          title: "Select Album",
          action: ActionIcon(icon: SvgPicture.asset("assets/Icons/Wallet.svg"),),
        ),
      ),
      body: BackGround_Container(child: SingleChildScrollView(
        child: Column(
          children: [


            mySearchBar(
              hinttext: "Search Album",
            ),
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
                scrollDirection: Axis.vertical,
                // controller: scrollController,
                  itemCount: 2,

                  itemBuilder: (ctx, index) {
                    if (index == 0) {
                      return
                        GestureDetector(
                          onTap: () {
                            Get.to(Select_Album_2());
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
                                                text: "Create Album",
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
                                              text: "My Album",
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
      bottomSheet: GlassBox(
          width: double.infinity,
          height: 80.0,
          child: Center(
            child: GestureDetector(
              onTap: () {
                // if (selectedItems.length >= 3) {
                Get.back();
                // } else {}
              },
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: primary),
                child: Center(
                  child:
                  AppText(text: "OK", SizeofFont: 20, textcolor: white),
                ),
              ),
            ),
          )),
    );
  }
}
