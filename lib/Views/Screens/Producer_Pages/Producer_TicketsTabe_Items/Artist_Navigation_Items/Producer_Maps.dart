import 'package:flutter/material.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';

class Producer_Maps extends StatefulWidget {
  const Producer_Maps({Key? key}) : super(key: key);

  @override
  State<Producer_Maps> createState() => _MapsState();
}

class _MapsState extends State<Producer_Maps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          title: "Event Live Location",
          action:Container()
        )
        ,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Images/Maps.png"),fit: BoxFit.fitWidth
          )
        ),
      ),
    );
  }
}
