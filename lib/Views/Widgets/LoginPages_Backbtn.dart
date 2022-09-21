import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sheba_music/const/App_Colors.dart';

class LoginPages_Backbtn extends StatelessWidget {
  const LoginPages_Backbtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: GestureDetector(
          onTap: (){
            Get.back();
          },
          child: Container(
            child: Neumorphic(
              style: NeumorphicStyle(

                shadowDarkColor: black,
                shadowLightColor: white,
                intensity: 0.6,
                shape: NeumorphicShape.convex,
                boxShape: NeumorphicBoxShape.circle(),
                depth:1,
                lightSource: LightSource.bottomRight,
                color: black.withOpacity(0.1),
              ),
              child: Container(
                height: 40,
                width: 40,

                child: Center(
                  child: SvgPicture.asset("assets/Icons/arrow_left.svg",height: 20,),

                ),
              ),
            ),
          ),
        )
    );
  }
}
