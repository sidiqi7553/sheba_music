import 'package:flutter/material.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginTemplete extends StatelessWidget {
  String? HintText;
  Widget? svgicon;
  Widget? svgicon1;

  LoginTemplete({
    Key? key,
    this.HintText,
    this.svgicon,
    this.svgicon1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20, left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        boxShadow: [
          BoxShadow(
            color: textformfieldColor,
          ),
        ],
      ),
      child: SizedBox(
        width: double.infinity,
        child: TextFormField(
          style: TextStyle(color: white),
          autofocus: true,
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: svgicon,
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: svgicon1,
            ),
            hintText: HintText,
            hintStyle: TextStyle(color: white),
            labelStyle: TextStyle(color: white),
            contentPadding: EdgeInsets.only(left: 5, top: 15),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(17),
              borderSide: BorderSide(color: primary, width: 1.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(17),
              borderSide: BorderSide(color: primary, width: 1.0),
            ),
          ),
        ),
      ),
    );
  }
}
