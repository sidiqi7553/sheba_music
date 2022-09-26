import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sheba_music/Views/Widgets/GlassBox.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

import '../../../../Widgets/Artist_MiniProfile.dart';
import '../../../../Widgets/customtextformfield.dart';

class allowfortag extends StatelessWidget {
  String title, note, btntext;
  Widget? nextpage, songprice;

  allowfortag(
      {Key? key,
      this.title = "Allow For Tag",
      this.note =
          "Click on the button to complete your Song purchase.Payment will be deducted from your wallet.",
      this.nextpage,
      this.songprice,
      this.btntext = "Proceed to Payment"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0, right: 18),
                child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      color: white,
                      size: 24,
                    )),
              ),
            ),
            AppText(
              text: title,
              SizeofFont: 20,
              textcolor: white,
              WeightofFont: FontWeight.w700,
            ),
            SizedBox(
              height: 30,
            ),
            Artist_MiniProfile(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: ListTile(
                horizontalTitleGap: 20,
                title: AppText(
                  text: "Set Profit Percentage",
                  SizeofFont: 14,
                  textcolor: white,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            customtextFormFieldOnlyHintText(
              hintText: 'Enter Profit Pecentage Per Song Sale',
            ),
          ],
        ));
  }
}
