import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Logo.dart';

import '../../Widgets/BackGround_Container.dart';
import 'SelectType.dart';




class Splash_1 extends StatefulWidget {
  const Splash_1({Key? key}) : super(key: key);



  @override
  State<Splash_1> createState() => _Splash_1State();
}

class _Splash_1State extends State<Splash_1> {
  @override
  Widget build(BuildContext context) {
    Timer (
        Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SelectType()));
    }
    );
    return Scaffold(

      body: BackGround_Container(
        child: Center(
          child: App_Logo(
            widht: 300,
            height: 300,
            logoheight: 200,
          ),
        ),
      )
    );
  }
}

