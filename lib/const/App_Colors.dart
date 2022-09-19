import 'package:flutter/material.dart';

const primary = Color(0xffA30000);
const background = Color(0xff27292E);
const white = Color(0xffFFFFFF);
final whiteforsubtitle = Color(0xffFFFFFF).withOpacity(0.7);
const grey = Color(0xff3B3D41);
const yellow = Color(0xffF2C94C);
const textformfieldColor = Color(0xff18191B);
const containercolor = Color(0xff24272C);
const black = Color(0xff000000);





final mygradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
  Color(0xff272A2E).withOpacity(1),
  Color(0xff161719).withOpacity(1),
]);

final appbargradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
  Color(0xff000000).withOpacity(0.45),
  Color(0xffFFFFFF).withOpacity(1),
]);