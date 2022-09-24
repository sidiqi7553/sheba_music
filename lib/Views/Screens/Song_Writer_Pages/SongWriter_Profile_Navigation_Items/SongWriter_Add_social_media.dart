import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sheba_music/Views/Widgets/customtextformfield.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';


class SongWrite_Add_social_media extends StatelessWidget {
  const SongWrite_Add_social_media({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          // nextscreen: Wallet_Main(),

          title: "Add Social Media",
          action: ActionIcon(icon: SvgPicture.asset("assets/Icons/Wallet.svg"),),
        )
        ,
      ),
      body: BackGround_Container(child: SingleChildScrollView(
        child:Column(
            children: [



              Container(
                  margin: EdgeInsets.only(top: 30,),
                  child:customtextFormFieldOnlyHintText(
                    hintText: "Facebook",
                  )
              ),
              Container(
                  margin: EdgeInsets.only(top: 30,),
                  child:customtextFormFieldOnlyHintText(
                    hintText: "InstaGram",
                  )
              ),
              Container(
                  margin: EdgeInsets.only(top: 30,),
                  child:customtextFormFieldOnlyHintText(
                    hintText: "Twitter",
                  )
              ),
              Container(
                  margin: EdgeInsets.only(top: 30,),
                  child:customtextFormFieldOnlyHintText(
                    hintText: "YouTube",
                  )
              ),


              Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 70,right: 70,top: 300),
                decoration: BoxDecoration(
                  color: primary,
                  borderRadius: BorderRadius.circular(10),

                ),
                child: Center(
                  child: AppText(text: "Update", SizeofFont: 20,textcolor: white,),
                ),
              )

            ],
        ),
      )),
    );
  }
}
