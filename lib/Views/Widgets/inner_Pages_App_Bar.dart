import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;

import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sheba_music/const/App_Colors.dart';


class inner_Pages_App_Bar extends StatelessWidget {
  String title;
  Widget? action, leading,nextscreen;
  PreferredSizeWidget? bottom;
  Color? bgcolor;

  inner_Pages_App_Bar({
    Key? key,
     this.nextscreen,
    this.title = 'Title',
     this.action,
    this.leading = const LeadingIcon(),
    this.bottom,
    this.bgcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: primary,
      leading: InkWell(
        onTap: (() => Navigator.pop(context)),
        child: leading,
      ),
      title: Text(
        title,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w800,
          fontSize: 17,
          color: white
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: InkWell(
              onTap: (){
                Get.to(nextscreen);
              },
              child: action),
        ),
      ],
      bottom: bottom,
    );
  }
}


class LeadingIcon extends StatelessWidget {
  const LeadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 35,
          width: 35,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.45),
                Colors.white,
              ],
            ),
          ),
          child: Container(
              height: 33,
              width: 33,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primary,
              ),child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Icon(Icons.arrow_back_ios,color: white,size: 20,),
        ),
          ),),
      );
  }
}

class ActionIcon extends StatelessWidget {
 Widget icon;
   ActionIcon({
    Key? key,
     required this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 35,
      width: 35,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.black.withOpacity(0.45),
            Colors.white,
          ],
        ),
      ),
      child: Container(
        height: 33,
        width: 33,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: primary,
        ),child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: icon,
        )
      ),);
  }
}

// Container(
//
//         height: 35,
//         width: 35,
//         alignment: Alignment.center,
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [
//               Colors.black.withOpacity(0.45),
//               Colors.white,
//             ],
//           ),
//         ),
//         child: Container(
//           height: 33,
//           width: 33,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: primary,
//           ),child: Padding(
//             padding: const EdgeInsets.only(left: 8.0),
//             child: Icon(Icons.arrow_back_ios,color: white,size: 20,),
//           ),
//         ),)











////////////////



//Neumorphic(
//       style: NeumorphicStyle(
//
//       shape: NeumorphicShape.flat,
//     boxShape: NeumorphicBoxShape.stadium(),
//     depth:1,
//     lightSource: LightSource.bottomRight,
//     color: primary
//       ),
//         child: Padding(
//           padding: const EdgeInsets.only(left: 8.0),
//           child: Icon(Icons.arrow_back_ios,color: white,size: 20,),
//         ),
//       )