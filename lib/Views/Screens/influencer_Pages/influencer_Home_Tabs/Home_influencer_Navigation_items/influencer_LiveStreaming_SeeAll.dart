import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sheba_music/Views/Screens/Extra_Screens_of_Influencer/Create_Screen_Influencer.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/Wallet/Wallet_Main.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/LiveStreaming_Videos.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';
import 'package:sheba_music/Views/Widgets/mySearchBar.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

class influencerLiveStreaming_SeeAll  extends StatelessWidget {
  const influencerLiveStreaming_SeeAll ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar_For_Live_Streaming(
          nextscreen: Wallet_Main(),

          title: "Live Streaming",
          action: ActionIconFor_Live_Streaming(icon: SvgPicture.asset("assets/Icons/Wallet.svg"),upload: Create_Screen_Influencer(),),
        )
        ,
      ),
      body: BackGround_Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                mySearchBar(
                  hinttext: "Search Live Stream",
                ),
                ListTile(
                  leading: AppText(text: "Live Streaming", SizeofFont: 20,textcolor:white,WeightofFont: FontWeight.w600,),
                ),
                SingleChildScrollView(
                  child: SizedBox(
                      height: MediaQuery.of(context).size.height*0.7,
                      width: MediaQuery.of(context).size.width,
                      child: GridView.builder(
                          gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              childAspectRatio: 9 / 7,
                              crossAxisSpacing: 0,
                              mainAxisSpacing: 0),
                          itemCount: 40,
                          itemBuilder: (BuildContext ctx, index) {
                            return GestureDetector(
                              onTap: () {},
                              child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, right: 10, top: 10),
                                  child: LiveStreaming_Videos(
                                    title: "Simi - Youtube Video Name",
                                  )),
                            );
                          })),
                ),

              ],
            ),
          )
      ),
    );
  }
}
