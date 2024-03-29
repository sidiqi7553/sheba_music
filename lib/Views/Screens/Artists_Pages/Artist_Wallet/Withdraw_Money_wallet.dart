import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/Wallet/Withdraw_terms.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/Icon_container.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

import '../Artist_Profile_Navigation_Items/Artist_Notifications.dart';

class Withdraw_Money_wallet extends StatelessWidget {
  const Withdraw_Money_wallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          nextscreen: Artist_Notifications(),
          title: "Withdraw Money",
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: ListTile(
                  title: AppText(
                    text: "Select Your Payment Method",
                    SizeofFont: 20,
                    textcolor: white,
                    WeightofFont: FontWeight.w600,
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                    margin: EdgeInsets.symmetric(vertical: 15),
                    height: 90,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                        color: containercolor,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(18, 18),
                              blurRadius: 36,
                              color: black.withOpacity(0.25)),
                          BoxShadow(
                              offset: Offset(-18, -18),
                              blurRadius: 36,
                              color: white.withOpacity(0.1)),
                        ]),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 49.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon_Container(
                                height: 60,
                                width: 60,
                                svgicon: "assets/Icons/Mobile_Money.svg"),
                            AppText(
                              text: "Mobile Money",
                              SizeofFont: 15,
                              textcolor: white,
                            )
                          ],
                        ),
                      ),
                    )),
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  height: 90,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                      color: containercolor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(18, 18),
                            blurRadius: 36,
                            color: black.withOpacity(0.25)),
                        BoxShadow(
                            offset: Offset(-18, -18),
                            blurRadius: 36,
                            color: white.withOpacity(0.1)),
                      ]),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon_Container(
                              height: 60,
                              width: 60,
                              svgicon: "assets/Icons/CardVisa.svg"),
                          AppText(
                            text: "Visa/Mastercard ",
                            SizeofFont: 15,
                            textcolor: white,
                          )
                        ],
                      ),
                    ),
                  )),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  height: 90,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                      color: containercolor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(18, 18),
                            blurRadius: 36,
                            color: black.withOpacity(0.25)),
                        BoxShadow(
                            offset: Offset(-18, -18),
                            blurRadius: 36,
                            color: white.withOpacity(0.1)),
                      ]),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 90.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon_Container(
                              height: 60,
                              width: 60,
                              svgicon: "assets/Icons/Paypal.svg"),
                          AppText(
                            text: "Paypal",
                            SizeofFont: 15,
                            textcolor: white,
                          )
                        ],
                      ),
                    ),
                  )),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  height: 90,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                      color: containercolor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(18, 18),
                            blurRadius: 36,
                            color: black.withOpacity(0.25)),
                        BoxShadow(
                            offset: Offset(-18, -18),
                            blurRadius: 36,
                            color: white.withOpacity(0.1)),
                      ]),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 60.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon_Container(
                              height: 60,
                              width: 60,
                              svgicon: "assets/Icons/G_pay.svg"),
                          AppText(
                            text: "Google Pay ",
                            SizeofFont: 15,
                            textcolor: white,
                          )
                        ],
                      ),
                    ),
                  )),
              Container(
                margin: EdgeInsets.all(30),
                child: GestureDetector(
                    onTap: () {
                      Get.to(Withdraw_terms());
                    },
                    child: AppText(
                      text: "Withdraw Terms",
                      SizeofFont: 15,
                      textcolor: white,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
