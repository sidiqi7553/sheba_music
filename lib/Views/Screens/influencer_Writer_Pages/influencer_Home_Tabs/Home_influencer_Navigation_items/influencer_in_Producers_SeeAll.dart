import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/Wallet/Wallet_Main.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';
import 'package:sheba_music/Views/Widgets/mySearchBar.dart';

import '../../../../../const/App_Colors.dart';
import 'influencer_in_SongWriter_SeeAll.dart';
import 'influencer_Profile_In_Artist.dart';

class influencer_in_Producers_SeeAll extends StatefulWidget {
  const influencer_in_Producers_SeeAll({Key? key}) : super(key: key);

  @override
  State<influencer_in_Producers_SeeAll> createState() => _Producers_SeeAllState();
}

class _Producers_SeeAllState extends State<influencer_in_Producers_SeeAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          nextscreen: Wallet_Main(),
          title: "Trending Producers",
          action: ActionIcon(
            icon: SvgPicture.asset("assets/Icons/Wallet.svg"),
          ),
        ),
      ),
      body: BackGround_Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              mySearchBar(
                hinttext: "Search Producers",
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.75,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.builder(
                      shrinkWrap: false,
                      scrollDirection: Axis.vertical,
                      itemCount: 30,
                      gridDelegate:
                          new SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: MediaQuery.of(context).size.width /
                            2 /
                            (MediaQuery.of(context).size.height / 4),
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            Get.to(influencerProfileInSongWriterSeeAll());
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage(
                                            "assets/Images/victoria.png",
                                          ),
                                          fit: BoxFit.cover)),
                                ),
                                Text(
                                  "producer Name",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      })
                  // GridView.builder(
                  //     gridDelegate:
                  //         const SliverGridDelegateWithMaxCrossAxisExtent(
                  //             maxCrossAxisExtent: 150,
                  //             childAspectRatio: 4 / 3,
                  //             crossAxisSpacing: 0,
                  //             mainAxisSpacing: 30),
                  //     itemCount: 21,
                  //     itemBuilder: (BuildContext ctx, index) {
                  //
                  //       return
                  //       Container(
                  //         height: 100,
                  //         width: 100,
                  //         child: Column(
                  //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //           children: [
                  //             Stack(
                  //               children: [
                  //                 GestureDetector(
                  //                   onTap: () {
                  //                     setState((){
                  //                       current = index;
                  //                     });
                  //                   },
                  //                   child: Container(
                  //                     height: 70,
                  //                     width: 70,
                  //                     decoration: BoxDecoration(
                  //                       border: current==index? Border.all(width: 4,color: primary):null,
                  //                       shape: BoxShape.circle,
                  //                       image: DecorationImage(
                  //
                  //                         image: AssetImage("assets/Images/victoria.png",),fit: BoxFit.cover
                  //                       )
                  //                     ),
                  //                   ),
                  //                 ),
                  //                 current==index? Positioned(
                  //                   top: 0,
                  //                   right: 0,
                  //                   child: Container(
                  //                   height: 20,
                  //                   width: 20,
                  //                   decoration: BoxDecoration(
                  //                     color: primary,
                  //                     shape: BoxShape.circle,
                  //                   ),
                  //                   child: Center(
                  //                     child: SvgPicture.asset("assets/Icons/Heart.svg",color: white,)
                  //                   ),
                  //                 ),
                  //                 )
                  //                     :Positioned(
                  //                     top: 0,
                  //                     right: 0,
                  //                     child: Container(
                  //                   height: 20,
                  //                   width: 20,
                  //                 )),
                  //               ],
                  //             ),
                  //             Text(
                  //               "Artist Name",
                  //               style: GoogleFonts.poppins(
                  //                 fontSize: 12,
                  //                 fontWeight: FontWeight.w400,
                  //                 color: white,
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       );
                  //     }),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
