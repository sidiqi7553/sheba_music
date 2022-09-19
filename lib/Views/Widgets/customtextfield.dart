import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sheba_music/const/App_Colors.dart';



class MyInputfield extends StatelessWidget {
  Function(String)? onvaluechange;
  String? hintText;
  String? labletext;
Color? color;
  String heading, val;
  Widget? suffixicon;
  double width, height;
  int? maxlines, maxlength;
  EdgeInsetsGeometry? contentpadding;
  FocusNode? focusnode;
  MyInputfield({
    Key? key,
    this.labletext,
    this.hintText,
    this.width = 0.8,
    this.heading = '',
    this.suffixicon,
    this.height = 50,
    this.contentpadding,
    this.onvaluechange,
    this.val = '',
    this.focusnode,
    this.maxlines,
    this.maxlength,
    this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          heading,
          style: GoogleFonts.poppins(
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
        ),
        // const SizedBox(
        //   height: 5,
        // ),
        Container(
          padding: const EdgeInsets.only(
            left: 5,
            right: 5,
            bottom: 5,
          ),
          width: MediaQuery.of(context).size.width * width,
          height: height,
          decoration: BoxDecoration(
            color: color,
            // boxShadow: [
            //   BoxShadow(
            //     offset: const Offset(10, 10),
            //     blurRadius: 20,
            //     color: Theme.of(context).splashColor,
            //     inset: true,
            //   ),
            //   BoxShadow(
            //     offset: const Offset(-5, -5),
            //     blurRadius: 20,
            //     color: Theme.of(context).shadowColor,
            //     inset: true,
            //   ),
            // ],
            border: Border.all(
              color: primary,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: TextFormField(
              maxLength: maxlength,
              maxLines: maxlines,
              focusNode: focusnode,
              style: GoogleFonts.poppins(
                fontSize: 14,
              ),
              decoration: InputDecoration(
                labelText: labletext,
                contentPadding: contentpadding,
                suffixIcon: suffixicon,
                hintStyle: GoogleFonts.poppins(
                  color: Colors.grey,
                  fontSize: 14,
                ),
                hintText: hintText,
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
