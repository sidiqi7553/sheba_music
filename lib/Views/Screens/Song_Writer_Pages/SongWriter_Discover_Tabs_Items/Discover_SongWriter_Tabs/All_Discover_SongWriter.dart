import 'package:flutter/material.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/HomeTabs_items/Navigation_items/NewReleases_SeeAll.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/HomeOriginModals/New_Releases.dart';
import 'package:sheba_music/Views/Widgets/HomeOriginModals/Top_Playlists.dart';
import 'package:sheba_music/Views/Widgets/HomeOriginModals/Trending_Beats.dart';

import '../Discover_SongWriter_Navigation_Items/SongWriter_Podcast_SellAll.dart';


class All_Discover_SongWriter extends StatelessWidget {
  const All_Discover_SongWriter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackGround_Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            New_Releases(
              title: "Popular In Your Area",
              seeAll: NewReleases_SeeAll(),
            ),
            Trending_Beats(
              title: "Podcast For You",
              seeAll: SongWriter_Artist_SeeAll(),
            ),
            Top_Playlists(
              title: "What’s New",
            ),
            Top_Playlists(
              title: "Mood",
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
