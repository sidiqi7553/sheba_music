import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/customtextformfield.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

import '../Producer_Profile_Navigation_Items/Producer_Notifications.dart';



class Send_Money extends StatelessWidget {
  const Send_Money({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          nextscreen: Producer_Notifications(),

          title: "Request Money",
          action: ActionIcon(icon: SvgPicture.asset("assets/Icons/Notification.svg"),),
        )
        ,
      ),
      body: BackGround_Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 15,),
              ListTile(
                title: AppText(text: "Enter Reciver Email / Username", SizeofFont: 15,textcolor: white,),
              ),
              customtextFormFieldOnlyHintText(
                hintText: "Email Address",
              ),
              SizedBox(height: 15,),
              ListTile(
                title: AppText(text: "Enter Amount", SizeofFont: 15,textcolor: white,),
              ),
              LoginTemplete(
                  HintText: "100",
                  svgicon: SvgPicture.asset("assets/Icons/dollar.svg")
              ),

              Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 30,right: 30,top: 100),
                decoration: BoxDecoration(
                  color: primary,
                  borderRadius: BorderRadius.circular(10),

                ),
                child: Center(
                  child: AppText(text: "Send Money", SizeofFont: 20,textcolor: white,),
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
