import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/MyProfile_Navigation_Items/Notifications.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/Icon_container.dart';
import 'package:sheba_music/Views/Widgets/Universal_Container.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';
import 'package:sheba_music/const/App_Colors.dart';

import '../../../../const/App_Text.dart';

class influencer_RecentTransactions_SeeAll extends StatefulWidget {
  const influencer_RecentTransactions_SeeAll({Key? key}) : super(key: key);

  @override
  State<influencer_RecentTransactions_SeeAll> createState() => _RecentTransactions_SeeAllState();
}

class _RecentTransactions_SeeAllState extends State<influencer_RecentTransactions_SeeAll> {
  int current = 0;
  List<String> catagory = [
    "Week",
    "Month",
    "Year",
  ];

  List<Widget> page = [
    Week(),
    Container(color: white,),
    Container(color: black,),

  ];
  int list = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          nextscreen: Notifications(),
          title: "Recent Transactions",
          action: ActionIcon(icon: SvgPicture.asset("assets/Icons/Notification.svg"),),
        )
        ,
      ),
      body: BackGround_Container(
        child:SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(15),
                border: Border.all(color: white.withOpacity(0.5))
                ),

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
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 0),
                          width:
                          MediaQuery.of(context).size.width *
                              0.3,
                          height: 50,
                          decoration: BoxDecoration(
                            color: list == index
                                ? primary
                                : Colors.transparent,
                            borderRadius: list == index
                                ? BorderRadius.circular(15)
                                : BorderRadius.circular(15),
                          ),
                          child: Center(
                              child: Text(
                                catagory[index],
                                style: TextStyle(
                                  fontSize: 20,
                                  color: white
                                ),
                              )),
                        ),
                      );
                    }),
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.81,
                  child: page[list]),

              ListTile(
                title: AppText(
                  text: "Weekly Transactions",
                  SizeofFont: 20,
                  textcolor: white,
                ),

              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20, top: 10, bottom: 30),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: ListView.builder(
                      itemCount: 15,
                      itemBuilder: (ctx, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: Universal_Container(
                            height: 90,
                            border: Border.all(color: primary),
                            widht: MediaQuery.of(context).size.width * 0.8,
                            child: Center(
                              child: ListTile(
                                leading: SizedBox(
                                  height: 60,
                                  width: 60,
                                  child: Icon_Container(
                                    height: 60,
                                    width: 60,
                                    svgicon: "assets/Icons/NotAdd.svg",
                                    iconsize: 30,
                                  ),
                                ),
                                title: AppText(
                                  text: "Payment Request From User",
                                  SizeofFont: 15,
                                  textcolor: white,
                                  WeightofFont: FontWeight.w800,
                                ),
                                subtitle: AppText(
                                  text: "1 Feb 22 • #123467",
                                  SizeofFont: 12,
                                  textcolor: whiteforsubtitle,
                                ),
                                trailing: AppText(
                                  text: "\$ 100",
                                  SizeofFont: 15,
                                  textcolor: white,
                                  WeightofFont: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
class Week extends StatefulWidget {
  const Week({Key? key}) : super(key: key);

  @override
  State<Week> createState() => _WeekState();
}

class _WeekState extends State<Week> {
  int current = 0;
  List<String> catagory = [
    "Deposit",
    "WithDraw",
  ];

  List<Widget> page = [
    Container(),
    Container(),

  ];
  int list = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 40,
            ),
            child: AppText(
              text: "Total Spendings",
              SizeofFont: 15,
              textcolor: white,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 5,
            ),
            child: AppText(
              text: "\$2,663.56",
              SizeofFont: 30,
              textcolor: white,
              WeightofFont: FontWeight.bold,
            ),
          ),

          Container(
            height: 500,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20)

            ),
            child: Container(
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: white.withOpacity(0.5)),
                  top: BorderSide(color: white.withOpacity(0.5))
                ),
               
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 50,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
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
                                child: Column(
                                  children: [
                                    Text(
                                      catagory[index],
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: list == index
                                            ? white
                                            : whiteforsubtitle,
                                        fontWeight: list==index?
                                        FontWeight.bold:
                                        null,
                                      ),
                                    ),
                                    Container(
                                      height: 3,
                                      margin: EdgeInsets.only(top: 10),
                                      width: MediaQuery.of(context).size.width*0.45,
                                      decoration: BoxDecoration(
                                        color: list == index?
                                        primary:
                                        grey,
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }),
                      ),
                    ],
                  ),

                  Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: page[list]),
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}

