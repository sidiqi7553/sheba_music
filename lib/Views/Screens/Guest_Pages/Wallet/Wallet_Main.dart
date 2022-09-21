import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/MyProfile_Navigation_Items/Notifications.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/HomeOriginModals/Trending_Artists.dart';
import 'package:sheba_music/Views/Widgets/Icon_container.dart';
import 'package:sheba_music/Views/Widgets/Universal_Container.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

import 'RecentTransactions_SeeAll.dart';

class Wallet_Main extends StatefulWidget {
  const Wallet_Main({Key? key}) : super(key: key);

  @override
  State<Wallet_Main> createState() => _Wallet_MainState();
}

class _Wallet_MainState extends State<Wallet_Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          nextscreen: Notifications(),
          title: "Wallet",
          action: ActionIcon(
            icon: SvgPicture.asset("assets/Icons/Notification.svg"),
          ),
        ),
      ),
      body: BackGround_Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 40,
                ),
                child: AppText(
                  text: "Total Balance",
                  SizeofFont: 15,
                  textcolor: whiteforsubtitle,
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
              Universal_Container(
                  height: 130,
                  widht: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Universal_Container(
                              height: 50,
                              border: Border.all(color: primary),
                              widht: 50,
                              child: Center(
                                child: SvgPicture.asset(
                                    "assets/Icons/Deposit.svg"),
                              )),
                          AppText(
                            text: "Deposit",
                            SizeofFont: 15,
                            textcolor: white,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Universal_Container(
                              height: 50,
                              border: Border.all(color: primary),
                              widht: 50,
                              child: Center(
                                child:
                                    SvgPicture.asset("assets/Icons/Send.svg"),
                              )),
                          AppText(
                            text: "Withdraw",
                            SizeofFont: 15,
                            textcolor: white,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Universal_Container(
                              height: 50,
                              border: Border.all(color: primary),
                              widht: 50,
                              child: Center(
                                child: SvgPicture.asset(
                                    "assets/Icons/Icon_Swap.svg"),
                              )),
                          AppText(
                            text: "Request \n/ Send",
                            SizeofFont: 15,
                            textcolor: white,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Universal_Container(
                              height: 50,
                              border: Border.all(color: primary),
                              widht: 50,
                              child: Center(
                                child: SvgPicture.asset(
                                    "assets/Icons/reports.svg"),
                              )),
                          AppText(
                            text: "Reports",
                            SizeofFont: 15,
                            textcolor: white,
                          )
                        ],
                      ),
                    ],
                  )),
              Trending_Artists(
                title: "Send Money To",
                name: "Influencer",
              ),
              Column(
                children: [
                  ListTile(
                    title: AppText(
                      text: "Recent Transactions",
                      SizeofFont: 20,
                      textcolor: white,
                    ),
                    trailing: InkWell(
                      onTap: () {
                        Get.to(RecentTransactions_SeeAll());
                      },
                      child: AppText(
                        text: "See All",
                        SizeofFont: 15,
                        textcolor: primary,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20, top: 10, bottom: 30),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.9,
                      child: ListView.builder(
                          itemCount: 5,
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
            ],
          ),
        ),
      ),
    );
  }
}
