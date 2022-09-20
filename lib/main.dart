import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/HomeTabs_items/Navigation_items/LiveStreaminng.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/Menu.dart';
import 'package:sheba_music/const/App_Colors.dart';

import 'Views/Screens/Login_pages/login_main_page.dart';
import 'Views/Screens/Main_Screens/SplashScreen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sheba Music',
      theme: ThemeData(
canvasColor: Colors.transparent,
        primarySwatch: Colors.red,
      ),
      home:  Menu(),
    );
  }
}


// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     final kInnerDecoration = BoxDecoration(
//       color: textformfieldColor,
//
//       borderRadius: BorderRadius.circular(32),
//     );
//
//     final kGradientBoxDecoration = BoxDecoration(
//       gradient: LinearGradient(
//         end  : Alignment.topLeft,
//           begin: Alignment.bottomRight,
//           colors: [Colors.black.withOpacity(1),Colors.white.withOpacity(0.2)]),
//       border: Border.all(
//         color: Colors.transparent,
//       ),
//       borderRadius: BorderRadius.circular(32),
//     );
//     return Scaffold(
//       backgroundColor: background,
// body: Center(
//   child:  Container(
//     width: 35,
//     height: 35,
//     decoration: BoxDecoration(
//         border: const GradientBoxBorder(
//           gradient: LinearGradient(
//               end  : Alignment.topLeft,
//               begin: Alignment.bottomRight,
//               colors: [Colors.black, Colors.white]),
//           width: 1,
//         ),
//         borderRadius: BorderRadius.circular(17.5)
//     ),
//   ),
// ),
//     );
//   }
// }
