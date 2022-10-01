import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/MyProfile_Navigation_Items/Notifications.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/Wallet/Deposit_Money_wallet.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/Wallet/Request_Send_Money.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/HomeOriginModals/Trending_Artists.dart';
import 'package:sheba_music/Views/Widgets/Icon_container.dart';
import 'package:sheba_music/Views/Widgets/Universal_Container.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

import 'Producer_RecentTransactions_SeeAll.dart';
import 'Withdraw_Money_wallet.dart';

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
                      GestureDetector(
                        onTap: () {
                          Get.to(Deposit_Money_wallet());
                        },
                        child: Column(
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
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(Withdraw_Money_wallet());
                        },
                        child: Column(
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
                              text: "Withdrawl",
                              SizeofFont: 15,
                              textcolor: white,
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(Request_Send_Money());
                        },
                        child: Column(
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
                        Get.to(Producer_RecentTransactions_SeeAll());
                      },
                      child: AppText(
                        text: "See All",
                        SizeofFont: 15,
                        textcolor: primary,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10, top: 10, bottom: 10),
                        child: Universal_Container(
                          height: 90,
                          border: Border.all(color: primary),
                          widht: MediaQuery.of(context).size.width * 0.9,
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
                                WeightofFont: FontWeight.w400,
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
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10, top: 10, bottom: 10),
                        child: Universal_Container(
                          height: 90,
                          border: Border.all(color: primary),
                          widht: MediaQuery.of(context).size.width * 0.9,
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
                                WeightofFont: FontWeight.w400,
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
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10, top: 10, bottom: 10),
                        child: Universal_Container(
                          height: 90,
                          border: Border.all(color: primary),
                          widht: MediaQuery.of(context).size.width * 0.9,
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
                                WeightofFont: FontWeight.w400,
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
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10, top: 10, bottom: 10),
                        child: Universal_Container(
                          height: 90,
                          border: Border.all(color: primary),
                          widht: MediaQuery.of(context).size.width * 0.9,
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
                                WeightofFont: FontWeight.w400,
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
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10, top: 10, bottom: 10),
                        child: Universal_Container(
                          height: 90,
                          border: Border.all(color: primary),
                          widht: MediaQuery.of(context).size.width * 0.9,
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
                                WeightofFont: FontWeight.w400,
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
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10, top: 10, bottom: 10),
                        child: Universal_Container(
                          height: 90,
                          border: Border.all(color: primary),
                          widht: MediaQuery.of(context).size.width * 0.9,
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
                                WeightofFont: FontWeight.w400,
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
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
