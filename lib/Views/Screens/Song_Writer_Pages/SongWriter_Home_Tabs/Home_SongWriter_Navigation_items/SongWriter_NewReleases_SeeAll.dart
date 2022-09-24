import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/Wallet/Wallet_Main.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/const/App_Colors.dart';


import '../../../../Widgets/Songs.dart';
import '../../../../Widgets/inner_Pages_App_Bar.dart';
import '../../../../Widgets/mySearchBar.dart';

class SongWriterNewReleases_SeeAll extends StatefulWidget {
  const SongWriterNewReleases_SeeAll({Key? key}) : super(key: key);

  @override
  State<SongWriterNewReleases_SeeAll> createState() => _NewReleases_SeeAllState();
}

class _NewReleases_SeeAllState extends State<SongWriterNewReleases_SeeAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          nextscreen: Wallet_Main(),

          title: "New Releases",
          action: ActionIcon(icon: SvgPicture.asset("assets/Icons/Wallet.svg"),),
        )
            ,
      ),
      body:
      BackGround_Container(child: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.center,
            children: [
              mySearchBar(),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 0.0, right: 0),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                        itemCount: 30,

                        itemBuilder: (ctx, index) {
                          return Column(
                            children: [Song1(),
                              Song2(),
                              Song3(),],
                          );
                        }),
                  ),
                ),
                // child:
                // Column(
                //   children: [
                //     ListTile(
                //       leading: CircleAvatar(
                //         radius: 20.0,
                //         child: ClipRRect(
                //           child: Container(
                //             decoration: BoxDecoration(
                //                 image: DecorationImage(image: AssetImage("Assets/Home_images/DP_Images/Image_DP1.png"))
                //             ),
                //           ),
                //           borderRadius: BorderRadius.circular(50.0),
                //         ),
                //       ),
                //       title: Text("Maciej Kowalski"),
                //       subtitle: Text("maciej.kowalski@email.com"),
                //       trailing: Text("08:43"),
                //
                //     ),
                //
                //   ],
                // ),
              ),
            ],
          ),
        ),
      )

      ),
    );
  }
}
