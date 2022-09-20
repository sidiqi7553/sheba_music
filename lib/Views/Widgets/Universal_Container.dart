import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';

import '../../const/App_Colors.dart';
import '../../const/App_Text.dart';
import 'Icon_container.dart';

class Universal_Container extends StatelessWidget {
  Widget? child;
  double? height, widht;
  Border? border;

  Universal_Container({
    Key? key,
    required this.child,
    this.height,
    this.widht=90,
    this.border
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 15),
        height: height,
        width: widht,
        decoration: BoxDecoration(
            color: containercolor,
            border: border,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  offset: Offset(18, 18),
                  blurRadius: 36,
                  color: black.withOpacity(0.25)),
              BoxShadow(
                  offset: Offset(-18, -18),
                  blurRadius: 36,
                  color: white.withOpacity(0.1)),
            ]),
        child: child);
  }
}
