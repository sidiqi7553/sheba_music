import 'package:flutter/material.dart';
import 'package:sheba_music/const/App_Text.dart';

import '../../../../../../const/App_Colors.dart';





class ContinerTemplete_influencer extends StatelessWidget {
  ContinerTemplete_influencer({Key? key, required this.BoxText}) : super(key: key);

  String BoxText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.92,
      margin: EdgeInsets.only(right: 20, left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),

            color: primary,

      ),
      child: Center(
          child: AppText(
            text: BoxText,
            SizeofFont: 18,
            textcolor: Colors.white,
            WeightofFont: FontWeight.w700,
          ),
      ),
    );
  }
}
