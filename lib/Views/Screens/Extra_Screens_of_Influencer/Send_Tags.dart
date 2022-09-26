import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/HomeOriginModals/Trending_Artists.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';
import 'package:sheba_music/Views/Widgets/mySearchBar.dart';
import 'package:sheba_music/const/App_Colors.dart';

import '../Guest_Pages/HomeTabs_items/Tabs/All.dart';
import 'Influencer_ArtistProfile_For_SendTag.dart';

class Send_Tags extends StatefulWidget {
  const Send_Tags({Key? key}) : super(key: key);

  @override
  State<Send_Tags> createState() => _Send_TagsState();
}

class _Send_TagsState extends State<Send_Tags> {
  List<String> catagory = [
    "All",
    "Artist",
    "Song Writer",
    "Producers"
  ];
  List<String> IMAGES = [
    "Homepic1",
    "Homepic2",
    "Homepic3",
    "Homepic4",
  ];
  List<Widget> page = [
    SendTags_All(),
    Container(
      color: grey,
    ),
    Container(
      color: primary,
    ),
    Container(
      color: white,
    ),
  ];
  int list = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          title: "Send Tags",
          action: ActionIcon(icon: SvgPicture.asset("assets/Icons/Wallet.svg"),),
        ),
      ),
      body: BackGround_Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              mySearchBar(
                hinttext: "Search, artists, producers, songwriters",
              ),
              Container(
                height: 35,
                margin:
                const EdgeInsets.symmetric(horizontal: 00, vertical: 00),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(25)),
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  // controller: scrollController,
                    itemCount: catagory.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            list = index;
                          });
                          print(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 00, vertical: 5),
                            width: MediaQuery.of(context).size.width * 0.24,
                            height: 25,
                            decoration: BoxDecoration(
                              color: containercolor,
                              border: list == index
                                  ? Border.all(color: primary)
                                  : Border.all(color: Colors.transparent),
                              borderRadius: list == index
                                  ? BorderRadius.circular(25)
                                  : BorderRadius.circular(25),
                            ),
                            child: Neumorphic(
                              style: NeumorphicStyle(
                                  surfaceIntensity: 0.9,
                                  shadowLightColorEmboss: black,
                                  shape: NeumorphicShape.concave,
                                  boxShape: NeumorphicBoxShape.roundRect(
                                      BorderRadius.circular(12)),
                                  depth: -3,
                                  lightSource: LightSource.bottomRight,
                                  color: containercolor),
                              child: Center(
                                  child: Text(
                                    catagory[index],
                                    style: TextStyle(fontSize: 13, color: white),
                                  )),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.75,
                  child: page[list]),

            ],
          ),
        ),
      ),
    );
  }
}


class SendTags_All extends StatelessWidget {
  const SendTags_All({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Trending_Artists(
            profilePage: Influencer_ArtistProfile_For_SendTag(),
          ),
          Trending_Artists(
            title: "Trending Song Writers",
            name: "Song Writer\n Name",
            profilePage: Influencer_ArtistProfile_For_SendTag(),


          ),
          Trending_Artists(
            title: "Trending Producers",
            name: "Producer\n Name",
            profilePage: Influencer_ArtistProfile_For_SendTag(),

          ),
        ],
      ),
    );
  }
}
