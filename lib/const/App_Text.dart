import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText extends StatelessWidget {
  AppText({
    Key? key,
    required this.text,
    this.textcolor,
    required this.SizeofFont,
    this.WeightofFont,
    this.align,
  }) : super(key: key);
  String text;
  final textcolor;
  double SizeofFont;
  final WeightofFont;
  final align;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: GoogleFonts.poppins(
          textStyle: TextStyle(
            color: textcolor,
            fontSize: SizeofFont,
            fontWeight: WeightofFont,
          )),
    );
  }
}
