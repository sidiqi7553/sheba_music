import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sheba_music/const/App_Colors.dart';



class Icon_Container extends StatelessWidget {
  String svgicon;
  double height ,width,iconsize;
   Icon_Container({Key? key,
   required this.svgicon,
  this.height=35,
  this.width=35,
  this.iconsize=20,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(

          shadowDarkColor: black,
          shadowLightColor: white,
          shape: NeumorphicShape.flat,
          boxShape: NeumorphicBoxShape.circle(),
          depth:1,
          lightSource: LightSource.topLeft,
          color: black.withOpacity(0.1),
      ),
      child: Center(
        child: Container(
          height: height,
          width: width,

          child: Center(
            child: SvgPicture.asset(svgicon,height: iconsize,),
          ),
        ),
      ),
    );
  }
}
