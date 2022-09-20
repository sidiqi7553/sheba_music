import 'package:flutter/material.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../const/App_Logo.dart';
import '../../../const/App_Text.dart';

class ContinueWithPhone extends StatelessWidget {
  const ContinueWithPhone({Key? key}) : super(key: key);

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
                text: "Continue With \n           Phone",
                SizeofFont: 32,
                textcolor: white,
                WeightofFont: FontWeight.w700,
              ),
              // SizedBox(
              //   height: 20,
              // ),
              Container(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: IntlPhoneField(
                    style: TextStyle(color: white),
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide: BorderSide(color: primary, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide: BorderSide(color: Colors.red, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide: BorderSide(color: primary, width: 1.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide: BorderSide(color: primary, width: 1.0),
                      ),
                      fillColor: Color(0xff18191B),
                      filled: true,
                      hintText: 'Phone Number',
                      contentPadding: EdgeInsets.only(left: 15),

                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
