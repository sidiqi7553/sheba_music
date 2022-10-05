import 'package:flutter/material.dart';
import 'package:flutter_image_slider/carousel.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/Main_Pages_App_Bar.dart';
import 'package:sheba_music/Views/Widgets/exibation_widget.dart';
import 'package:sheba_music/Views/Widgets/mySearchBar.dart';
import 'package:sheba_music/Views/Widgets/tour.dart';
import 'package:sheba_music/const/App_Colors.dart';

import '../TicketsTabe_Items/Tabs/All_Tickets.dart';

class Tickets extends StatefulWidget {
  const Tickets({Key? key}) : super(key: key);

  @override
  State<Tickets> createState() => _TicketsState();
}

class _TicketsState extends State<Tickets> {
  List<String> catagory = [
    "All",
    "Concerts",
    "Exhibitions",
    "Tours",
  ];
  List<String> IMAGES = [
    "Homepic1",
    "Homepic2",
    "Homepic3",
    "Homepic4",
  ];
  List<Widget> page = [
    All_Tickets(),
    All_Tickets(),
<<<<<<< Updated upstream
    Exibation_Details_Widget(),
    Tour_Details_Widget(),



=======
    All_Tickets(),
    All_Tickets(),
>>>>>>> Stashed changes
  ];
  int list = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: Main_Pages_App_Bar(
            title: Leadingtitle(
              leadingtext: "Tickets",
              Welcome: "",

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
                      // SwipeDeck(
                      //   startIndex: 3,
                      //   emptyIndicator: Container(
                      //     child: Center(
                      //       child: Text("Nothing Here"),
                      //     ),
                      //   ),
                      //   cardSpreadInDegrees: 5,
                      //   // Change the Spread of Background Cards
                      //   onSwipeLeft: () {
                      //     print("USER SWIPED LEFT -> GOING TO NEXT WIDGET");
                      //   },
                      //   onSwipeRight: () {
                      //     print("USER SWIPED RIGHT -> GOING TO PREVIOUS WIDGET");
                      //   },
                      //   onChange: (index) {
                      //     print(IMAGES[index]);
                      //   },
                      //   widgets: IMAGES
                      //       .map((e) => GestureDetector(
                      //             onTap: () {
                      //               print(e);
                      //             },
                      //             child: ClipRRect(
                      //                 borderRadius: BorderRadius.circular(20),
                      //                 child: Image(
                      //                   image: AssetImage(
                      //                     "assets/Images/Homepic1.png",
                      //                   ),
                      //                   fit: BoxFit.cover,
                      //                 )),
                      //           ))
                      //       .toList(),
                      // ),
                      Container(
                        child: Container(
                            height: 180,
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                            child:  Carousel(
                              indicatorWidth: 0,
                              indicatorHeight: 0,
                              indicatorBarWidth: 0,
                              indicatorBarHeight: 0,indicatorBarColor: Colors.transparent,
                              autoScroll: true,
                              // widgets
                              items: [
                                Image(image: AssetImage("assets/Images/Homepic1.png")),
                                Image(image: AssetImage("assets/Images/Homepic2.png")),
                                Image(image: AssetImage("assets/Images/Homepic3.png")),
                                Image(image: AssetImage("assets/Images/Homepic4.png")),
                              ],
                            )),
                      ),

                      mySearchBar(
                        suffixicon: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(child: SvgPicture.asset("assets/Icons/Filter.svg",color: white,height: 25,)),
                        ),
                        hinttext: "Search Tickets, Events",
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
