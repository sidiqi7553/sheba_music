import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/Wallet/Wallet_Main.dart';
import 'package:sheba_music/Views/Widgets/LiveStreaming_Videos.dart';
import 'package:sheba_music/Views/Widgets/Videos.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';
import 'package:sheba_music/Views/Widgets/mySearchBar.dart';
import 'package:sheba_music/const/App_Text.dart';

import '../../../../Widgets/BackGround_Container.dart';
import 'SongWriter_Videopage.dart';

class SongWriterTrendingVidoes_SeeAll extends StatelessWidget {
  const SongWriterTrendingVidoes_SeeAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          nextscreen: Wallet_Main(),
          title: "Trending Videos",
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
              hinttext: "Search Videos",
            ),
            SingleChildScrollView(
              child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              childAspectRatio: 8 / 6,
                              crossAxisSpacing: 0,
                              mainAxisSpacing: 0),
                      itemCount: 40,
                      itemBuilder: (BuildContext ctx, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10, top: 10),
                              child: Video(
                                videopage: SongWriterVideopage(),
                              )),
                        );
                      })),
            ),
          ],
        ),
      )),
    );
  }
}
