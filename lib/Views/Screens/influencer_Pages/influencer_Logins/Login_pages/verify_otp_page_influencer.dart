import 'package:flutter/material.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/const/App_Colors.dart';

import 'package:pinput/pinput.dart';
import 'package:get/get.dart';
import 'package:sheba_music/const/App_Logo.dart';
import 'package:sheba_music/const/App_Text.dart';

import 'common_login/continer_templete_influencer.dart';

class VerifyOtpPage_influencer extends StatefulWidget {
  const VerifyOtpPage_influencer({Key? key}) : super(key: key);

  @override
  State<VerifyOtpPage_influencer> createState() => _VerifyOtpPageState();
}

class _VerifyOtpPageState extends State<VerifyOtpPage_influencer> {
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
        color: textformfieldColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: primary,
          width: 1.0,
        )),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: BackGround_Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Center(
                  child: App_Logo(
                    widht: 146,
                    height: 146,
                    logoheight: 90,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              AppText(
                text: "OTP Verify",
                SizeofFont: 32,
                textcolor: white,
                WeightofFont: FontWeight.w700,
              ),
              // SizedBox(
              //   height: 20,
              // ),
              SizedBox(
                height: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'You will get an OTP in ',
                    style: TextStyle(
                        fontSize: 17,
                        // fontWeight: FontWeight.bold,
                        color: white),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '+233 632673232',
                          style: TextStyle(
                              fontSize: 17,
                              // fontWeight: FontWeight.bold,
                              color: white),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Change',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Pinput(
                    defaultPinTheme: defaultPinTheme,
                    validator: (s) {
                      return s == '2222' ? null : 'Pin is incorrect';
                    },
                    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                    showCursor: true,
                    onCompleted: (pin) => print(pin),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text(
                      '02:59',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: yellow),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Enter Valid OTP Number ! ',
                          style: TextStyle(
                              fontSize: 15,
                              // fontWeight: FontWeight.bold,
                              color: white),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'You will receive a 4 digit code ',
                          style: TextStyle(fontSize: 15, color: white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Didn’t receive code?',
                          style: TextStyle(
                              fontSize: 19,
                              // fontWeight: FontWeight.bold,
                              color: white),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Resend',
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Get.to(ContinueWithPhone());
                    },
                    child: ContinerTemplete_influencer(
                      BoxText: "Send Otp",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
