import 'package:flutter/material.dart';

import '../../../../const/App_Colors.dart';
import '../../../../const/App_Text.dart';


class ContinerTemplete extends StatelessWidget {
  ContinerTemplete({Key? key, required this.BoxText}) : super(key: key);

  String BoxText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.92,
      margin: EdgeInsets.only(right: 20, left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        boxShadow: [
          BoxShadow(
            color: primary,
          ),
        ],
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
