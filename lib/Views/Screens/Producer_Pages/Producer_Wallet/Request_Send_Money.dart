import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/Wallet/Request_Money.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/Icon_container.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

import '../Producer_Profile_Navigation_Items/Producer_Notifications.dart';
import 'Send_Money.dart';

class Request_Send_Money extends StatelessWidget {
  const Request_Send_Money({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          nextscreen: Producer_Notifications(),

          title: "Request / Send Money",
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
                onTap: (){
                  Get.to(Request_Money());
                },
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
                                svgicon: "assets/Icons/request_Money.svg"),
                            AppText(
                              text: "Request Money",
                              SizeofFont: 15,
                              textcolor: white,
                            )
                          ],
                        ),
                      ),
                    )),
              ),
              GestureDetector(
                onTap: (){
                  Get.to(Send_Money());
                },
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
                        padding: const EdgeInsets.only(right: 75.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon_Container(
                                height: 60,
                                width: 60,
                                svgicon: "assets/Icons/send_money.svg"),
                            AppText(
                              text: "Send Money",
                              SizeofFont: 15,
                              textcolor: white,
                            )
                          ],
                        ),
                      ),
                    )),
              ),




            ],
          ),
        ),
      ),
    );
  }
}
