import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;

import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sheba_music/Views/Screens/Extra_Screens_of_Influencer/Select_Songs_to_tagged.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';


class inner_Pages_App_Bar extends StatelessWidget {
  String title;
  Widget? action, leading,nextscreen;
  PreferredSizeWidget? bottom;
  Color? bgcolor;

  inner_Pages_App_Bar({
    Key? key,
     this.nextscreen,
    this.title = 'Title',
     this.action,
    this.leading = const LeadingIcon(),
    this.bottom,
    this.bgcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: primary,
      leading: InkWell(
        onTap: (() => Navigator.pop(context)),
        child: leading,
      ),
      title: Text(
        title,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w800,
          fontSize: 17,
          color: white
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: InkWell(
              onTap: (){
                Get.to(nextscreen);
              },
              child: action),
        ),
      ],
      bottom: bottom,
    );
  }
}


class LeadingIcon extends StatelessWidget {
  const LeadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 35,
          width: 35,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.45),
                Colors.white,
              ],
            ),
          ),
          child: Container(
              height: 33,
              width: 33,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primary,
              ),child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Icon(Icons.arrow_back_ios,color: white,size: 20,),
        ),
          ),),
      );
  }
}

class ActionIcon extends StatelessWidget {
 Widget icon;
   ActionIcon({
    Key? key,
     required this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 35,
      width: 35,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.black.withOpacity(0.45),
            Colors.white,
          ],
        ),
      ),
      child: Container(
        height: 33,
        width: 33,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: primary,
        ),child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: icon,
        )
      ),);
  }
}




class Influencer_inner_Pages_App_Bar_For_send_Tag extends StatelessWidget {
  String title;
  Widget? action, leading,nextscreen;
  PreferredSizeWidget? bottom;
  Color? bgcolor;

  Influencer_inner_Pages_App_Bar_For_send_Tag({
    Key? key,
    this.nextscreen,
    this.title = 'Title',
    this.action,
    this.leading = const LeadingIcon(),
    this.bottom,
    this.bgcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: primary,
      leading: InkWell(
        onTap: (() => Navigator.pop(context)),
        child: leading,
      ),
      title: Text(
        title,
        style: GoogleFonts.poppins(
            fontWeight: FontWeight.w800,
            fontSize: 17,
            color: white
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all( 8.0),
          child: ActionIconSendTag(
            SendTag: Select_Songs_to_tagged(),
          ),
        ),
      ],
      bottom: bottom,
    );
  }
}


class InfluencerLeadingIcon extends StatelessWidget {
  const InfluencerLeadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 35,
          width: 35,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.45),
                Colors.white,
              ],
            ),
          ),
          child: Container(
            height: 33,
            width: 33,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: primary,
            ),child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Icon(Icons.arrow_back_ios,color: white,size: 20,),
          ),
          ),),
      );
  }
}

class ActionIconSendTag extends StatelessWidget {
  Widget? SendTag;
  ActionIconSendTag({
    Key? key,

     this.SendTag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(SendTag);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 15,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: white,
          ),
          child: Center(
            child: AppText(text: "Send Tag", SizeofFont: 10,textcolor: primary,WeightofFont: FontWeight.bold,),
          ),
        ),
      ),
    );
  }
}


class inner_Pages_App_Bar_For_Live_Streaming extends StatelessWidget {
  String title;
  Widget? action, leading,nextscreen;
  PreferredSizeWidget? bottom;
  Color? bgcolor;

  inner_Pages_App_Bar_For_Live_Streaming({
    Key? key,
    this.nextscreen,
    this.title = 'Title',
    this.action,
    this.leading = const LeadingIcon(),
    this.bottom,
    this.bgcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: primary,
      leading: InkWell(
        onTap: (() => Navigator.pop(context)),
        child: leading,
      ),
      title: Text(
        title,
        style: GoogleFonts.poppins(
            fontWeight: FontWeight.w800,
            fontSize: 17,
            color: white
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: InkWell(
              onTap: (){
                Get.to(nextscreen);
              },
              child: action),
        ),
      ],
      bottom: bottom,
    );
  }
}


class LeadingIconFor_Live_Streaming extends StatelessWidget {
  const LeadingIconFor_Live_Streaming({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 35,
          width: 35,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.45),
                Colors.white,
              ],
            ),
          ),
          child: Container(
            height: 33,
            width: 33,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: primary,
            ),child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Icon(Icons.arrow_back_ios,color: white,size: 20,),
          ),
          ),),
      );
  }
}

class ActionIconFor_Live_Streaming extends StatelessWidget {
  Widget icon;
  Widget? upload;
  ActionIconFor_Live_Streaming({
    Key? key,
    required this.icon,
     this.upload,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return

      Row(
        children: [
          InkWell(
            onTap: () {
              Get.to(upload);
            },
            child: Container(
              height: 35,
              width: 35,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(0.45),
                    Colors.white,
                  ],
                ),
              ),
              child: Container(
                  height: 33,
                  width: 33,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: primary,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SvgPicture.asset("assets/Icons/upload.svg"),
                  )),
            ),
          ),
          SizedBox(width: 10,),
          Container(
          height: 35,
          width: 35,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.45),
                Colors.white,
              ],
            ),
          ),
          child: Container(
              height: 33,
              width: 33,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primary,
              ),child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: icon,
          )
          ),),

        ],
      );
  }
}