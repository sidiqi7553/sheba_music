import 'package:flutter/material.dart';
import 'package:sheba_music/const/App_Colors.dart';



class BackGround_Container extends StatelessWidget {
  Widget? child;
 BackGround_Container({Key? key,required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: mygradient
        ),
       child: child,
    );
  }
}
