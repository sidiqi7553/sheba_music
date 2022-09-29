import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/HomeTabs_items/Navigation_items/Artist_Profile.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/HomeTabs_items/Navigation_items/Producers_SeeAll.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';

import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

import '../../../../Widgets/HomeOriginModals/New_Releases.dart';
import '../../../../Widgets/HomeOriginModals/Top_Playlists.dart';
import '../../../../Widgets/HomeOriginModals/Trending_Artists.dart';
import '../../../../Widgets/HomeOriginModals/Trending_Beats.dart';
import '../../../../Widgets/HomeOriginModals/Trending_Videos.dart';
import '../../../../Widgets/LiveStreaming_Videos.dart';
import '../../New_Realese_demo.dart';
import '../Home_Producer_Navigation_items/Producer_LiveStreaming_SeeAll.dart';
import '../Home_Producer_Navigation_items/Producer_Profile_In_Artist.dart';
import '../Home_Producer_Navigation_items/Producer_TrendingVidoes_SeeAll.dart';
import '../Home_Producer_Navigation_items/Producer_Videopage.dart';
import '../Home_Producer_Navigation_items/Producer_in_Producers_SeeAll.dart';



class All extends StatefulWidget {
  const All({Key? key}) : super(key: key);

  @override
  State<All> createState() => _AllState();
}

class _AllState extends State<All> {
  @override
  Widget build(BuildContext context) {
    return BackGround_Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Artist_New_Releases(),
            Trending_Artists(
              seeAll: Producer_in_Producers_SeeAll(),
              profilePage: ProducerProfileInArtist(),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    title: AppText(
                      text: "Live Streaming",
                      SizeofFont: 20,
                      textcolor: white,
                    ),
                    trailing: InkWell(
                      onTap: () {
                        Get.to(ProducerLiveStreaming_SeeAll());
                      },
                      child: AppText(
                        text: "See All",
                        SizeofFont: 15,
                        textcolor: primary,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: SizedBox(
                        height: 330,
                        width: MediaQuery.of(context).size.width,
                        child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 200,
                                    childAspectRatio: 8 / 6,
                                    crossAxisSpacing: 0,
                                    mainAxisSpacing: 0),
                            itemCount: 4,
                            itemBuilder: (BuildContext ctx, index) {
                              return GestureDetector(
                                onTap: () {},
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, right: 10, top: 10),
                                    child: LiveStreaming_Videos()),
                              );
                            })),
                  ),
                ],
              ),
            ),
            New_Releases(
              title: "Trending Beats",
            ),
            Trending_Artists(
              profilePage: Artist_Profile(),
              seeAll: Producers_SeeAll(),
              title: "Trending producers",
            ),
            SingleChildScrollView(
              child: Container(
                height: 280,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                decoration: BoxDecoration(

                ),
                child: New_Releases(
                  title: "Promoted By Influencers",
                ),
              ),
            ),
            Trending_Beats(),
            Trending_Artists(
              title: "Trending Song Writers",
              name: "song Writers",
            ),
            Trending_Videos(
              videopage: ProducerVideopage(),
              seeAll: ProducerTrendingVidoes_SeeAll(),
            ),
            Trending_Artists(
              title: "Trending Influencer",
              name: "Influencer",
            ),
            Trending_Beats(
              title: "Mood",
            ),
            Trending_Videos(
              title: "Recently Played Videos",
            ),
            Trending_Beats(
              title: "Purchased Beats",
            ),
            Top_Playlists(),
            Top_Playlists(
              title: "Trending Albums",
            ),
            ListTile(
              title: AppText(
                text: "Top Picks",
                SizeofFont: 20,
                textcolor: white,
              ),
              trailing: InkWell(
                onTap: () {},
                child: AppText(
                  text: "See All",
                  SizeofFont: 15,
                  textcolor: primary,
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, right: 10, top: 10, bottom: 30),
                child: Container(
                  height: 100,
                  child: ListView.builder(
                      itemCount: 30,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/Images/victoria.png",
                                      ),
                                      fit: BoxFit.cover)),
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
    );
  }
}