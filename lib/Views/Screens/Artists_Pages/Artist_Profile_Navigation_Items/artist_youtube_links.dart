import 'package:flutter/material.dart';
import 'package:sheba_music/Views/Screens/Artists_Pages/Artist_Home_Tabs/HomeArtist_Navigation_items/Artist_Videopage.dart';
import 'package:sheba_music/Views/Widgets/Videos.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

import '../../../Widgets/BackGround_Container.dart';
import '../../../Widgets/customtextformfield.dart';
import '../../../Widgets/inner_Pages_App_Bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Guest_Pages/Wallet/Wallet_Main.dart';

class Youtube_Links extends StatelessWidget {
  const Youtube_Links({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          nextscreen: Wallet_Main(),

          title: "Youtube Links",
          action: ActionIcon(
            icon: SvgPicture.asset("assets/Icons/Wallet.svg"),
          ),
        ),
      ),
      body: BackGround_Container(
        child: SingleChildScrollView(
          child: Column(

            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 10, right: 10, bottom: 20),
                child: LoginTemplete(
                  HintText: 'Paste YouTube Link here',
                ),
              ),
              Container(
                height: 35,
                width: MediaQuery.of(context).size.width*0.40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: primary,

                ),
                child: Center(
                  child: AppText(
                    text: 'Save',
                    SizeofFont: 14,
                    textcolor: white,

                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: ListTile(
                  horizontalTitleGap: 20,
                  title: AppText(
                    text: "My Uploaded Videos",
                    SizeofFont: 15,
                    textcolor: white,
                  ),
                ),
              ),

              SizedBox(
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
                              videopage: ArtistVideopage(),
                            )),
                      );
                    }),
              ),
            ],
          ),
        ),



      ),

    );
  }
}
