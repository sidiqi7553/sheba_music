import 'package:flutter/material.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

import '../../../Widgets/inner_Pages_App_Bar.dart';

class Withdraw_terms extends StatelessWidget {
  const Withdraw_terms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          title: "Withdraw Terms",
          action:  Container(),
        ),
      ),
      body: BackGround_Container(
        child: SingleChildScrollView(
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 8.0,top: 30),
                child: ListTile(
                  leading: AppText(text: "Our Withdrawal Policies", SizeofFont: 20,textcolor: white,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 15),
                child: Container(
                  child:
                  AppText(
                    text: "1.  Maximum per transaction is  USD 5000.\n"
                        "2. Minimum per transaction is  USD 1 Your balance can only be withdrawn to the mobile number that you registered with.\n"
                        "3. Any card details you choose to save are encrypted. We do not store your CVV.\n"
                        "4. We do not share your payment information. It is used for transaction verification only.\n"
                        "5. If you have any issues, please contact customer service. Using too many cards or bank accounts for deposits may cause the deposit to be blocked and your account restricted.\n"
                        "6. Your bank may apply a surcharge. Any such fee is neither controlled nor received by Sheba Music.",
                    SizeofFont: 15,
                    textcolor: white,
                    align: TextAlign.start,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
