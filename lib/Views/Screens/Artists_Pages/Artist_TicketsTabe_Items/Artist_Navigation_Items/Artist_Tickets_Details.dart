import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sheba_music/Views/Widgets/Artist_MiniProfile.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/Comments.dart';
import 'package:sheba_music/Views/Widgets/GlassBox.dart';
import 'package:sheba_music/Views/Widgets/Icon_container.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

import '../../../../Widgets/inner_Pages_App_Bar.dart';
import '../../../Guest_Pages/Wallet/Wallet_Main.dart';
import 'Artist_Maps.dart';
import 'Artist_Tickets_pricing.dart';

class Artist_Tickets_Details extends StatefulWidget {
  const Artist_Tickets_Details({Key? key}) : super(key: key);

  @override
  State<Artist_Tickets_Details> createState() => _Tickets_DetailsState();
}

class _Tickets_DetailsState extends State<Artist_Tickets_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          title: "Ticket Name",
          nextscreen: Wallet_Main(),
          action: ActionIcon(
            icon: SvgPicture.asset("assets/Icons/Wallet.svg"),
          ),
        ),
      ),
      body: BackGround_Container(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 28.0, right: 28.0, top: 29),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: primary, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: AssetImage(
                      "assets/Images/victoria.png",
                    ),
                    width: double.infinity,
                    height: 235,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 11.0),
              child: ListTile(
                title: AppText(
                  text: "Concert Name",
                  SizeofFont: 20,
                  textcolor: white,
                  WeightofFont: FontWeight.w700,
                ),
                trailing: Container(
                  width: 150,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10, left: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 0,
                                  ),
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue,
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/Images/victoria.png"),
                                      fit: BoxFit.cover,
                                    ),
                                    border: Border.all(
                                      color: white,
                                      width: 1.5,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 10,
                                  ),
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: white,
                                      width: 1.5,
                                    ),
                                    shape: BoxShape.circle,
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/Images/victoria.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 20,
                                  ),
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: white,
                                      width: 1.5,
                                    ),
                                    shape: BoxShape.circle,
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/Images/victoria.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            AppText(
                              text: "2k+ going",
                              SizeofFont: 12,
                              textcolor: whiteforsubtitle,
                            )
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: whiteforsubtitle,
                        size: 15,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                      text: "Singer Name",
                      SizeofFont: 17,
                      textcolor: whiteforsubtitle),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      AppText(
                          text: "Tickets Available:",
                          SizeofFont: 17,
                          textcolor: whiteforsubtitle),
                      SizedBox(
                        width: 5,
                      ),
                      AppText(
                        text: "200",
                        SizeofFont: 17,
                        textcolor: white,
                        WeightofFont: FontWeight.bold,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 13),
              child: ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xff2E3236), Color(0xff141515)]),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(4, 6),
                            color: black.withOpacity(0.25),
                            blurRadius: 10)
                      ]),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                        intensity: 0.4,
                        shadowDarkColorEmboss: black,
                        shadowDarkColor: black,
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.circle(),
                        depth: 1,
                        lightSource: LightSource.bottomRight,
                        color: Colors.transparent),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SvgPicture.asset("assets/Icons/Calendar.svg"),
                    ),
                  ),
                ),
                title: Container(
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AppText(
                        text: "September 17, 2022",
                        SizeofFont: 17,
                        textcolor: white,
                        WeightofFont: FontWeight.w800,
                      ),
                      AppText(
                          text: "Saturday, 4:00-10:00PM",
                          SizeofFont: 13,
                          textcolor: whiteforsubtitle),
                      Container(
                        height: 30,
                        width: 160,
                        decoration: BoxDecoration(
                            border: Border.all(color: primary, width: 1.5),
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: AppText(
                            text: "Add to My Calender",
                            SizeofFont: 10,
                            textcolor: white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 13),
              child: ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xff2E3236), Color(0xff141515)]),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(4, 6),
                            color: black.withOpacity(0.25),
                            blurRadius: 10)
                      ]),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                        intensity: 0.4,
                        shadowDarkColorEmboss: black,
                        shadowDarkColor: black,
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.circle(),
                        depth: 1,
                        lightSource: LightSource.bottomRight,
                        color: Colors.transparent),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SvgPicture.asset("assets/Icons/Location.svg"),
                    ),
                  ),
                ),
                title: Container(
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AppText(
                        text: "Grand Avenue Center",
                        SizeofFont: 17,
                        textcolor: white,
                        WeightofFont: FontWeight.w800,
                      ),
                      AppText(
                          text: "49 SBY St, Surabaya, Indonesia",
                          SizeofFont: 13,
                          textcolor: whiteforsubtitle),
                      GestureDetector(
                        onTap: () {
                          Get.to(Artist_Maps());
                        },
                        child: Container(
                          height: 30,
                          width: 160,
                          decoration: BoxDecoration(
                              border: Border.all(color: primary, width: 1.5),
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: AppText(
                              text: "See on map",
                              SizeofFont: 10,
                              textcolor: white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ListTile(
              horizontalTitleGap: -25,
              leading: Text(''),
              title: AppText(
                text: "Event Created By",
                SizeofFont: 15,
                textcolor: white,
                WeightofFont: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Artist_MiniProfile(),
            ),
            ListTile(
              horizontalTitleGap: -25,
              leading: Text(''),
              title: AppText(
                text: "About",
                SizeofFont: 15,
                textcolor: white,
                WeightofFont: FontWeight.bold,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 28),
              child: Row(
                children: [
                  Expanded(
                      child: AppText(
                    text:
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                    SizeofFont: 12,
                    textcolor: whiteforsubtitle,
                  ))
                ],
              ),
            ),
            ListTile(
              horizontalTitleGap: -25,
              leading: Text(''),
              title: AppText(
                text: "Event Discussion",
                SizeofFont: 15,
                textcolor: white,
                WeightofFont: FontWeight.bold,
              ),
            ),
            Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: textformfieldColor,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(26, 26),
                      blurRadius: 12,
                      color: Colors.black.withOpacity(0.25),
                      // inset: true,
                    ),
                    // BoxShadow(
                    //   offset: const Offset(-16, -16),
                    //   blurRadius: 12,
                    //   color: Colors.white.withOpacity(0.1),
                    //   // inset: true,
                    // ),
                  ],
                ),
                child: Comments()),
          ],
        ),
      )),
      bottomSheet: GlassBox(
        width: double.infinity,
        height: 80.0,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: ListTile(
            title: AppText(
              text: "PRICE",
              SizeofFont: 15,
              textcolor: yellow,
            ),
            subtitle: AppText(
              text: "\$17.60 / Person",
              SizeofFont: 20,
              textcolor: white,
            ),
            trailing: GestureDetector(
              onTap: () {
                Get.to(Artist_Tickets_pricing());
              },
              child: Container(
                height: 40,
                width: 140,
                decoration: BoxDecoration(
                  color: primary,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: AppText(
                    text: "Buy Now",
                    SizeofFont: 20,
                    textcolor: white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
