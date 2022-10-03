import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/MyProfile_Navigation_Items/Notifications.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/TicketsTabe_Items/Navigation_Items/Tickets_pricing.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/Wallet/Deposit_Money_wallet.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/Icon_container.dart';
import 'package:sheba_music/Views/songDetailsBottomSheet/purchasedPaidSongs.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

import '../../../../Widgets/inner_Pages_App_Bar.dart';
import 'Going.dart';


class Deposit_Money extends StatefulWidget {
  const Deposit_Money({Key? key}) : super(key: key);

  @override
  State<Deposit_Money> createState() => _Deposit_MoneyState();
}

class _Deposit_MoneyState extends State<Deposit_Money> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          nextscreen: Notifications(),
          title: "Deposit Money",
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
                            Icon_Container1(
                                height: 60,
                                width: 60,
<<<<<<< Updated upstream
                                svgicon: "assets/Icons/Mobile_Money.png",
                                iconsize: 35),

                            AppText(
=======




                                svgicon: "assets/Icons/Mobile_Money.png",
                                iconsize: 35),




  AppText(
>>>>>>> Stashed changes
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
                          Icon_Container1(
                              height: 60,
                              width: 60,
                              svgicon: "assets/Icons/Master_Card.png",
                              iconsize: 45),
                          AppText(
                            text: "Visa/Mastercard ",
                            SizeofFont: 15,
                            textcolor: white,
                          )
                        ],
                      ),
                    ),
                  )
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
                      padding: const EdgeInsets.only(right: 90.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon_Container1(
                              height: 60,
                              width: 60,
                              svgicon: "assets/Icons/Paypal_.png",
                              iconsize: 45),
                          AppText(
                            text: "Paypal",
                            SizeofFont: 15,
                            textcolor: white,
                          )
                        ],
                      ),
                    ),
                  )
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
                      padding: const EdgeInsets.only(right: 60.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon_Container1(
                              height: 60,
                              width: 60,
                              svgicon: "assets/Icons/google-pay.png",
                              iconsize: 45
                          ),
                          AppText(
                            text: "Google Pay ",
                            SizeofFont: 15,
                            textcolor: white,
                          )
                        ],
                      ),
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void payment(BuildContext context) {

  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext c) {
        return FractionallySizedBox(
          heightFactor: 0.8,
          child: purchasedPaidSongs(
              nextpage:Going(),
              title: "Payment Details",
              note: "Click on the button to complete your ticket purchase.Payment will be deducted from your wallet."),
        );
      });
}
