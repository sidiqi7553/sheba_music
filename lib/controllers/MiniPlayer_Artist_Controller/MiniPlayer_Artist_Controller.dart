
// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/Menu_Items/Library.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/Menu_Items/Tickets.dart';
import 'package:sheba_music/Views/songDetailsBottomSheet/songPlay.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';


import 'package:get/get.dart';

class MiniPlayerController extends GetxController {
  RxBool mini = false.obs;
  // showminiplayer(){
  //   return Dismissible(
  //     direction: DismissDirection.down,
  //     key: const Key('key'),
  //     onDismissed: (_) {},
  //     child: AnimatedContainer(duration: const Duration(milliseconds: 500),
  //       color: Colors.transparent,
  //       width: double.infinity,
  //       height: 100,
  //       child: songPlay(),
  //
  //     ),
  //   );
  // }
}