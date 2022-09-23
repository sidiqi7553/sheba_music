import 'package:dropdown_plus/dropdown_plus.dart';
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
        borderRadius: BorderRadius.circular(10),

            color: textformfieldColor,


      ),
      child: SizedBox(
        width: double.infinity,
        child: TextFormField(
          style: TextStyle(color: white),
          autofocus: false,
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
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: primary, width: 1.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: primary, width: 1.0),
            ),
          ),
        ),
      ),
    );
  }
}



class customtextFormFieldOnlyHintText extends StatelessWidget {
  String? hintText;
  Widget? svgicon;
  Widget? svgicon1;
  double width, height;
  int? maxlines, maxlength;

  customtextFormFieldOnlyHintText({
    Key? key,
    this.hintText,
    this.svgicon,
    this.svgicon1,
    this.width = 0.9999,

    this.height = 50,

    this.maxlines,
    this.maxlength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: MediaQuery.of(context).size.width* width,
      margin: EdgeInsets.only(right: 20, left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),

        color: textformfieldColor,


      ),
      child: SizedBox(
        width: double.infinity,
        child: TextFormField(
          maxLength: maxlength,
          maxLines: maxlines,
          style: TextStyle(color: white),
          autofocus: false,
          decoration: InputDecoration(

            hintText: hintText,
            hintStyle: TextStyle(color: white),
            labelStyle: TextStyle(color: white),
            contentPadding: EdgeInsets.only(left: 15, top: 15),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: primary, width: 1.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: primary, width: 1.0),
            ),
          ),
        ),
      ),
    );
  }
}

class customTextFormFieldwithSuffixicon extends StatelessWidget {
  String? hintText;
  Widget? suffixicon;
  Widget? svgicon1;

  customTextFormFieldwithSuffixicon({
    Key? key,
    this.hintText,
    this.suffixicon,
    this.svgicon1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20, left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),

        color: textformfieldColor,


      ),
      child: SizedBox(
        width: double.infinity,
        child: TextFormField(
          style: TextStyle(color: white),
          autofocus: false,
          decoration: InputDecoration(

            suffixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: suffixicon,
            ),
            hintText: hintText,
            hintStyle: TextStyle(color: white),
            labelStyle: TextStyle(color: white),
            contentPadding: EdgeInsets.only(left: 15, top: 15),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: primary, width: 1.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: primary, width: 1.0),
            ),
          ),
        ),
      ),
    );
  }
}


class customTextFormFielddropdown extends StatelessWidget {
  String? hintText;
  Widget? suffixicon;
  Widget? svgicon1;

  customTextFormFielddropdown({
    Key? key,
    this.hintText,
    this.suffixicon,
    this.svgicon1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20, left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),

        color: textformfieldColor,


      ),
      child: SizedBox(
        width: double.infinity,
        child: TextDropdownFormField(
          // style: TextStyle(color: white),
          // autofocus: false,
          decoration: InputDecoration(

            suffixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset("assets/Icons/Dropdownarrow.svg"),
            ),
            hintText: hintText,
            hintStyle: TextStyle(color: white),
            labelStyle: TextStyle(color: white),
            contentPadding: EdgeInsets.only(left: 15, top: 15),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: primary, width: 1.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: primary, width: 1.0),
            ),
          ), options: ["10","20","30","40","50","60","70","80","90","100","150","200",],
        ),
      ),
    );
  }
}


class customTextFormFieldwithdatepicker extends StatelessWidget {
  String? hintText;
  Widget? suffixicon;
  Widget? svgicon1;

  customTextFormFieldwithdatepicker({
    Key? key,
    this.hintText,
    this.suffixicon,
    this.svgicon1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20, left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),

        color: textformfieldColor,


      ),
      child: SizedBox(
        width: double.infinity,
        child: TextFormField(
          style: TextStyle(color: white),
          autofocus: false,
          decoration: InputDecoration(

            suffixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: suffixicon,
            ),
            hintText: hintText,
            hintStyle: TextStyle(color: white),
            labelStyle: TextStyle(color: white),
            contentPadding: EdgeInsets.only(left: 5, top: 15),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: primary, width: 1.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: primary, width: 1.0),
            ),
          ),
        ),
      ),
    );
  }
}
