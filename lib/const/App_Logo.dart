import 'package:flutter/material.dart';

import 'App_Colors.dart';

class App_Logo extends StatelessWidget {
  double? height,widht,logoheight;
  App_Logo({Key? key,
    this.height,
    this.logoheight,
  this.widht,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: widht,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: primary,
          boxShadow: [
            BoxShadow(
                offset: Offset(5, 5),
                spreadRadius: 0,
                blurRadius: 20,
                color: Colors.black.withOpacity(0.25))
          ]
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Center(
          child: Image(
            image: AssetImage("assets/Sheba_App_LOgo.png",),
            height: logoheight,
          ),
        ),
      ),
    );
  }
}