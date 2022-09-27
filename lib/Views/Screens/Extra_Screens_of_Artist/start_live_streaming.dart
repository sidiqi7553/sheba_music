import 'package:flutter/material.dart';
import 'package:sheba_music/const/App_Text.dart';

import '../../../const/App_Colors.dart';
import '../../Widgets/inner_Pages_App_Bar.dart';
import '../Guest_Pages/Wallet/Wallet_Main.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StartLiveStream extends StatefulWidget {
  const StartLiveStream({Key? key}) : super(key: key);

  @override
  State<StartLiveStream> createState() => _StartLiveStreamState();
}

class _StartLiveStreamState extends State<StartLiveStream> {
  bool current = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          nextscreen: Wallet_Main(),
          title: "Youtube Links",
          action: ActionIcon(
            icon: SvgPicture.asset("assets/Icons/Wallet.svg"),
          ),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/Images/victoria.png",
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                current
                    ? SizedBox(
                        height: 50,
                        width: 50,
                      )
                    : Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: black,
                              borderRadius: BorderRadius.circular(25)),
                          child: SvgPicture.asset("assets/Icons/Chat.svg",
                              height: 15, width: 15, fit: BoxFit.scaleDown),
                        ),
                      ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      current = !current;
                    });
                  },
                  child: current
                      ? Container(
                          height: 74,
                          width: 74,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    primary,
                                    Color(0xFF5B5ABF),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  stops: [0.0, 1.0],
                                  tileMode: TileMode.clamp),
                              borderRadius: BorderRadius.circular(37)),
                          child: Center(
                              child: AppText(
                            text: 'Start',
                            SizeofFont: 14,
                            textcolor: white,
                          )),
                        )
                      : Container(
                          height: 74,
                          width: 74,
                          decoration: BoxDecoration(
                              color: primary,
                              borderRadius: BorderRadius.circular(37)),
                          child: Center(
                              child: AppText(
                            text: 'End',
                            SizeofFont: 14,
                            textcolor: white,
                          )),
                        ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.circular(25)),
                        child: SvgPicture.asset("assets/Icons/Group.svg",
                            height: 5, width: 5, fit: BoxFit.scaleDown),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.circular(27)),
                        child: SvgPicture.asset("assets/Icons/mic_2.svg",
                            height: 5, width: 5, fit: BoxFit.scaleDown),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                            color: primary,
                            borderRadius: BorderRadius.circular(27)),
                        child: SvgPicture.asset("assets/Icons/Group (2).svg",
                            height: 5, width: 5, fit: BoxFit.scaleDown),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
