import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sheba_music/const/App_Colors.dart';



class mySearchBar extends StatelessWidget {
  String hinttext;
  Widget? suffixicon;
   mySearchBar({Key? key, this.hinttext="Search Artists, Producers..",this.suffixicon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width*0.8,
      margin: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
      decoration: BoxDecoration(
          color: textformfieldColor,
          border: Border.all(color: primary,),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(-8,-8),
                color: Colors.black.withOpacity(0.25),
                blurRadius: 16,
                inset: true

            ),
            BoxShadow(
                offset: Offset(8,8),
                color: Colors.black.withOpacity(0.25),
                blurRadius: 16,
                inset: true
            )
          ]
      ),
      child: TextFormField(
        style: TextStyle(color: white),
        keyboardType: TextInputType.text,

        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(child: SvgPicture.asset("assets/Icons/Search.svg",color: primary,)),
          ),
          hintText: hinttext,
          suffixIcon: suffixicon,
          hintStyle: TextStyle(color: white,),
          contentPadding: EdgeInsets.only(top: 15),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,

        ),
      ),
    );
  }
}
