import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:sheba_music/Views/Screens/Extra_Screens_of_Artist/Select_Album.dart';
import 'package:sheba_music/Views/Screens/Extra_Screens_of_Artist/Select_Create_Playlist.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/HomeTabs_items/Navigation_items/Artist_Profile.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/HomeTabs_items/Navigation_items/Artist_SeeAll.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/HomeTabs_items/Navigation_items/Influencer_SeeAll.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/HomeTabs_items/Navigation_items/LiveStreaming_SeeAll.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/HomeTabs_items/Navigation_items/Producers_SeeAll.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/Select_Artist.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/songDetailsBottomSheet/purchasedPaidSongs.dart';

import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

import '../../../../Widgets/HomeOriginModals/New_Releases.dart';
import '../../../../Widgets/HomeOriginModals/Top_Playlists.dart';
import '../../../../Widgets/HomeOriginModals/Trending_Artists.dart';
import '../../../../Widgets/HomeOriginModals/Trending_Beats.dart';
import '../../../../Widgets/HomeOriginModals/Trending_Videos.dart';
import '../../../../Widgets/LiveStreaming_Videos.dart';
import '../Navigation_items/NewReleases_SeeAll.dart';
import '../Navigation_items/SongWriter_SeeAll.dart';
import '../Navigation_items/TrendingVidoes_SeeAll.dart';
import '../Navigation_items/Videopage.dart';

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
            New_Releases(
              seeAll: NewReleases_SeeAll(),
            ),
            Trending_Artists(
              seeAll: Artist_SeeAll(),
              profilePage: Artist_Profile(),
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
                        Get.to(LiveStreaming_SeeAll());
                      },
                      child: AppText(
                        text: "See All",
                        SizeofFont: 15,
                        textcolor: primary,
                      ),
                    ),
                  ),
                  livestreamgridview()
                ],
              ),
            ),
            New_Releases(
              title: "Trending Beats",
              seeAll: NewReleases_SeeAll(
                newtitle: "Trending Beats",
              ),
            ),
            Trending_Artists(
              profilePage: Artist_Profile(),
              seeAll: Producers_SeeAll(),
              title: "Trending Producers",
            ),
            New_Releases(
              title: "Promoted By Influencers",
              seeAll: NewReleases_SeeAll(
                newtitle: "Promoted",
              ),
            ),
            Trending_Beats(
              title: "Recently Played Beats",
              seeAll: NewReleases_SeeAll(
                newtitle: "Recently Played Beats",
              ),
            ),
            Trending_Artists(
              title: "Trending Song Writers",
              name: "song Writers",
              seeAll: SongWriter_SeeAll(),
            ),
            Trending_Videos(
              videopage: Videopage(),
              seeAll: TrendingVidoes_SeeAll(),
            ),
            Trending_Artists(
              title: "Trending Influencer",
              name: "Influencer",
              seeAll: Influencer_SeeAll(),
            ),
            Trending_Beats(
              title: "Mood",
              seeAll: NewReleases_SeeAll(
                newtitle: "Mood",
              ),
            ),
            Trending_Videos(
              title: "Recently Played Videos",
            ),
            Trending_Beats(
              title: "Purchased Beats",
              seeAll: NewReleases_SeeAll(
                newtitle: "Purchased beats",
              ),
            ),
            Top_Playlists(
              seeAll: Select_Create_Playlist(),
            ),
            Top_Playlists(
              title: "Trending Albums",
              seeAll: Select_Album(),
            ),
            ListTile(
              title: AppText(
                text: "Top Picks",
                SizeofFont: 20,
                textcolor: white,
              ),
              trailing: InkWell(
                onTap: () {
                  Get.to(Select_Artist());
                },
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

class livestreamgridview extends StatelessWidget {
  const livestreamgridview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
          height: 330,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  LiveStreaming_Videos(),
                  LiveStreaming_Videos(),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  LiveStreaming_Videos(),
                  LiveStreaming_Videos(),

                ],
              ),
            ],
          ),

      ),
    );
  }
}

