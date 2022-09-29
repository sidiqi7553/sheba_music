import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/TicketsTabe_Items/Navigation_Items/Deposit_Money.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/Wallet/Wallet_Main.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/GlassBox.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';
import 'package:sheba_music/Views/songDetailsBottomSheet/purchasedPaidSongs.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

class influencer_Tickets_pricing extends StatefulWidget {
  const influencer_Tickets_pricing({Key? key}) : super(key: key);

  @override
  State<influencer_Tickets_pricing> createState() => _Tickets_pricingState();
}

class _Tickets_pricingState extends State<influencer_Tickets_pricing> {
  List<String> catagory = [
    "VVIP",
    "VIP",
    "Regular",
    "Populer",
  ];
  List<String> IMAGES = [
    "Homepic1",
    "Homepic2",
    "Homepic3",
    "Homepic4",
  ];
  List<Widget> page = [
    VVIP(),
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
          nextscreen: Wallet_Main(),

          title: "Ticket Name",
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
                padding:
                    const EdgeInsets.only(left: 28.0, right: 28.0, top: 29),
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
              ListTile(
                horizontalTitleGap: -25,
                leading: Text(''),
                title: AppText(
                  text: "Select Category",
                  SizeofFont: 15,
                  textcolor: white,
                  WeightofFont: FontWeight.bold,
                ),
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
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: page[list]),
            ],
          ),
        ),
      ),
    );
  }
}

class VVIP extends StatefulWidget {
  const VVIP({Key? key}) : super(key: key);

  @override
  State<VVIP> createState() => _VVIPState();
}

class _VVIPState extends State<VVIP> {
  double productprice = 17.60;
  double? price;

  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decreamentCounter() {
    setState(() {
      _counter--;
    });
  }

  void _priceCounter() {
    setState(() {
      price = (productprice) * _counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.transparent,
        child: Column(
          children: [
            ListTile(
              horizontalTitleGap: -25,
              leading: Text(''),
              title: AppText(
                text: "Select Persons",
                SizeofFont: 15,
                textcolor: white,
                WeightofFont: FontWeight.bold,
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                  color: containercolor,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: primary)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      if (_counter > 1) {
                        _decreamentCounter();
                      }
                      _priceCounter();
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: containercolor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(2, 2),
                                blurRadius: 4,
                                color: black.withOpacity(0.25)),
                          ]),
                      child: Center(
                        child: Text(
                          "-",
                          style: TextStyle(color: white, fontSize: 50),
                        ),
                      ),
                    ),
                  ),
                  AppText(
                    text: '$_counter',
                    SizeofFont: 30,
                    textcolor: white,
                  ),
                  InkWell(
                    onTap: () {
                      _incrementCounter();
                      _priceCounter();
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: containercolor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(-2, -2),
                                blurRadius: 4,
                                color: white.withOpacity(0.25)),
                          ]),
                      child: Center(
                        child: Text(
                          "+",
                          style: TextStyle(color: white, fontSize: 40),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: GlassBox(
        width: double.infinity,
        height: 80.0,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: ListTile(
            title: AppText(
              text: "TOTAL PRICE",
              SizeofFont: 15,
              textcolor: yellow,
            ),
            subtitle: AppText(
              text: "\$" + (price).toString(),
              SizeofFont: 20,
              textcolor: white,
            ),
            trailing: GestureDetector(
              onTap: () {
                buyticket(context);
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
                    text: "Continue",
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

void buyticket(BuildContext context) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext c) {
        return FractionallySizedBox(
          heightFactor: 0.8,
          child: purchasedPaidSongs(
            nextpage: Deposit_Money(),
            btntext: "Deposit Payment",
            title: "Payment Details",
            note:  "You do not have sufficient funds to purchase this ticket. Deposit Money into your wallet to continue.",
          ),
        );
      });
}
