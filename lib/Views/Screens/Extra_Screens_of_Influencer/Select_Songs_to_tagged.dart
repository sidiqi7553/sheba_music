import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/Songs.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

import '../Guest_Pages/Wallet/Wallet_Main.dart';

class Select_Songs_to_tagged extends StatefulWidget {
  const Select_Songs_to_tagged({Key? key}) : super(key: key);

  @override
  State<Select_Songs_to_tagged> createState() => _Select_Songs_to_taggedState();
}

class _Select_Songs_to_taggedState extends State<Select_Songs_to_tagged> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          nextscreen: Wallet_Main(),

          title: "Artist Name",
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
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: AppText(text: "Select Songs to tagged", SizeofFont: 18,textcolor: white,WeightofFont: FontWeight.w600,),
            ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: ListTile(
                  horizontalTitleGap: 20,
                  title: AppText(
                    text: "All Paid Songs",
                    SizeofFont: 20,
                    textcolor: white,
                  ),
                ),
              ),

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
