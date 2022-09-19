import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Universal_Container extends StatelessWidget {
  Widget? child;
  double? height,widht;
   Universal_Container({
     Key? key,
     required this.child,
     this.height,
     this.widht,

   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: widht,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        // boxShadow: [
        //   BoxShadow(
        //     offset: Offset(-18,-18),
        //     blurRadius: 36,
        //       color: black.withOpacity(0.25)
        //   ),
        //   BoxShadow(
        //       offset: Offset(18,18),
        //       blurRadius: 36,
        //       color: white.withOpacity(0.25)
        //
        //   )
        // ]

      ),
      child: Neumorphic(
          style: NeumorphicStyle(
              intensity: 0.1,
              shadowLightColorEmboss: Colors.transparent,

              shape: NeumorphicShape.flat,
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(0)),
              depth:20,
              lightSource: LightSource.topLeft,
              color: Colors.transparent
          ),
          child:child,
      ),
    );
  }
}
