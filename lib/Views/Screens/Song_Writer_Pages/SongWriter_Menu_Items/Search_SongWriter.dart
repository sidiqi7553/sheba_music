import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/Main_Pages_App_Bar.dart';
import 'package:sheba_music/Views/Widgets/mySearchBar.dart';
import 'package:sheba_music/const/App_Colors.dart';

import '../../../../const/App_Text.dart';
import '../../../Widgets/Artist_Main_Pages_App_Bar.dart';
import '../../Guest_Pages/SearchTabs_Items/Tabs/All_Search.dart';

class SearchSongWriter extends StatefulWidget {
  const SearchSongWriter({Key? key}) : super(key: key);

  @override
  State<SearchSongWriter> createState() => _SearchState();
}

class _SearchState extends State<SearchSongWriter> {
  List<String> catagory = [
    "All",
    "Podcast",
    "Afrobeats",
    "Life-time",
  ];

  List<String> IMAGES = [
    "Homepic1",
    "Homepic2",
    "Homepic3",
    "Homepic4",
  ];

  List<Widget> page = [
    All_Search(),
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
        child: Artist_Main_Pages_App_Bar(
            title: AppText(text: "Search", SizeofFont: 20,textcolor: white,)
        )
        ,
      ),
      body: BackGround_Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              mySearchBar(
                hinttext: "Search, songs, artists, songwriters",
              ),

              Container(
                height: 35,
                margin:
                const EdgeInsets.symmetric(horizontal: 00, vertical: 10),
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
