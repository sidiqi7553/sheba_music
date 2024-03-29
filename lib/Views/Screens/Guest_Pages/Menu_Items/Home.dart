import 'package:flutter/material.dart';
import 'package:flutter_image_slider/carousel.dart';

import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:sheba_music/TEmp/models/music.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/HomeTabs_items/Navigation_items/afrobeats.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/HomeTabs_items/Navigation_items/life_time.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/HomeTabs_items/Navigation_items/podcast_tab.dart';

import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/const/App_Colors.dart';

import 'package:swipe_deck/swipe_deck.dart';

import '../../../Widgets/Main_Pages_App_Bar.dart';
import '../HomeTabs_items/Tabs/All.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
    All(),
    Podcast_Tab(),
    Afrobeats_Tab(),
    LifeTime_Tab(),
  ];
  int list = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: Main_Pages_App_Bar(
            title: Leadingtitle(
          leadingtext: "Hi Hamza,",
          Welcome: "Welcome Back",
        )),
      ),
      body: BackGround_Container(
          child: SingleChildScrollView(
              child: Column(children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
          child: Column(
            children: [
              Container(
                child: Container(
                    height: 180,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    child: Carousel(
                      indicatorWidth: 0,
                      indicatorHeight: 0,
                      indicatorBarWidth: 0,
                      indicatorBarHeight: 0,
                      indicatorBarColor: Colors.transparent,
                      autoScroll: true,
                      // widgets
                      items: [
                        Container(height:150,width: MediaQuery.of(context).size.width*0.8,
                            child: Image(image: AssetImage("assets/Images/Homepic1.png"),fit: BoxFit.cover,)),
                        Container(height:150,width: MediaQuery.of(context).size.width*0.8,
                            child: Image(image: AssetImage("assets/Images/Homepic2.png"),fit: BoxFit.cover,)),
                        Container(height:150,width: MediaQuery.of(context).size.width*0.8,
                            child: Image(image: AssetImage("assets/Images/Homepic3.png"),fit: BoxFit.cover,)),
                        Container(height:150,width: MediaQuery.of(context).size.width*0.8,
                            child: Image(image: AssetImage("assets/Images/Homepic4.png"),fit: BoxFit.cover,)),
                       ],
                    )),
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
      ]))),
    );
  }
}
