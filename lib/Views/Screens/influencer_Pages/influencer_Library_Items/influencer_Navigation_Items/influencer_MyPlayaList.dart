import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/Wallet/Wallet_Main.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/Songs.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';

class influencerMyPlayaList extends StatelessWidget {
  const influencerMyPlayaList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          nextscreen: Wallet_Main(),

          title: "Playlist Name",
          action: ActionIcon(icon: SvgPicture.asset("assets/Icons/Wallet.svg"),),
        ),

      ),
      body: BackGround_Container(child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 0.0, right: 0),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                      itemCount: 30,

                      itemBuilder: (ctx, index) {
                        return Column(
                          children: [
                            Song1(),
                            Song2(),
                            Song3(),
                          ],
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
      )),
    );
  }
}
