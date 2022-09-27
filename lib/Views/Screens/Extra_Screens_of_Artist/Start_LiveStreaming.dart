import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

import '../../Widgets/customtextformfield.dart';
import 'start_live_streaming.dart';
import 'Select_Album_2.dart';

class Start_LiveStreaming extends StatefulWidget {

  const Start_LiveStreaming({Key? key}) : super(key: key);

  @override
  State<Start_LiveStreaming> createState() => _Start_LiveStreamingState();
}

class _Start_LiveStreamingState extends State<Start_LiveStreaming> {
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          title: "Start Live Stream",
          action: ActionIcon(icon: SvgPicture.asset("assets/Icons/Wallet.svg"),),
        ),
      ),
      body: BackGround_Container(child: SingleChildScrollView(
        child: Column(
          children: [
              SizedBox(height: 20,),
            customtextFormFieldOnlyHintText(
              hintText: "Live Stream Title",
            ),
            SizedBox(height: 20,),

            customTextFormFielddropdown(
              hintText: "Paid",
            ),
            SizedBox(height: 20,),
            customtextFormFieldOnlyHintText(
              hintText: "Enter Amount",
            ),
          ],
        ),
      )),
      bottomSheet: Container(
        height: 100,
        color: Colors.transparent,
        child: Center(
          child: GestureDetector(
            onTap: (){
              Get.to(StartLiveStream());
            },
            child: Container(
              height: 40,
              width: MediaQuery.of(context).size.width*0.8,
              margin: EdgeInsets.only(left: 70,right: 70,top: 00),
              decoration: BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.circular(10),

              ),
              child: Center(
                child: AppText(text: "Start Live Stream", SizeofFont: 20,textcolor: white,),
              ),
            ),
          ),
        )
        ,
      ),

    );
  }
}
