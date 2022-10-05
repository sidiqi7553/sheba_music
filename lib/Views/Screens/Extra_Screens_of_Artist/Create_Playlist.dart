import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/Songs.dart';
import 'package:sheba_music/Views/Widgets/customtextformfield.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';
import 'package:sheba_music/Views/Widgets/mySearchBar.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

import '../Guest_Pages/Wallet/Wallet_Main.dart';
import 'Select_Album_2.dart';

class Create_Playlist extends StatefulWidget {
  const Create_Playlist({Key? key}) : super(key: key);

  @override
  State<Create_Playlist> createState() => _Create_PlaylistState();
}

class _Create_PlaylistState extends State<Create_Playlist> {
  PlatformFile? temp;

  pickphoto() async {
    final image =
        // ignore: invalid_use_of_visible_for_testing_member
        await FilePicker.platform.pickFiles(
      type: FileType.image,
    );
    if (image == null) return;
    setState(() {
      temp = image.files.first;
    });
  }

  PlatformFile? temp2;

  pickCoverphoto() async {
    final image =
        // ignore: invalid_use_of_visible_for_testing_member
        await FilePicker.platform.pickFiles(
      type: FileType.image,
    );
    if (image == null) return;
    setState(() {
      temp2 = image.files.first;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          nextscreen: Wallet_Main(),
          title: "Create Playlist",
          action: ActionIcon(
            icon: SvgPicture.asset("assets/Icons/Wallet.svg"),
          ),
        ),
      ),
      body: BackGround_Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          pickCoverphoto();
                        },
                        child: Container(
                          height: 150,
                          margin: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 10),
                          width: MediaQuery.of(context).size.width,
                          child: DottedBorder(
                            borderType: BorderType.RRect,
                            color: primary,
                            radius: Radius.circular(0),
                            strokeWidth: 1,
                            dashPattern: [8, 6],
                            strokeCap: StrokeCap.butt,
                            child: Container(
                              height: 150,
                              width: MediaQuery.of(context).size.width,
                              decoration: temp2 == null
                                  ? BoxDecoration(
                                      color: textformfieldColor,
                                      borderRadius: BorderRadius.circular(5),
                                    )
                                  : BoxDecoration(
                                      color: Colors.transparent,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: FileImage(File(temp2!.path!)),
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                              child: temp2 == null
                                  ? Center(
                                      child: Container(
                                        height: 90,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            SvgPicture.asset(
                                              'assets/Icons/Plus.svg',
                                              color: white,
                                              height: 50,
                                            ),
                                            Text(
                                              'Add Playlist Image',
                                              style: GoogleFonts.poppins(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400,
                                                color: white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  : Align(
                                      alignment: Alignment.topRight,
                                      child: IconButton(
                                        hoverColor: Colors.transparent,
                                        onPressed: (() {
                                          setState(() {
                                            temp2 = null;
                                          });
                                        }),
                                        icon: Icon(
                                          Icons.close,
                                          color: white,
                                        ),
                                      ),
                                    ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      customtextFormFieldOnlyHintText(
                        hintText: "Enter Playlist Name",
                      ),
                      mySearchBar(
                        hinttext: " Search Artist ",
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: ListTile(
                          horizontalTitleGap: 20,
                          title: AppText(
                            text: "Select and Add Songs in Playlist",
                            SizeofFont: 18,
                            textcolor: white,
                          ),
                        ),
                      ),
                        SingleChildScrollView(
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.25,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Song1(),
                                  Song2(),
                                  Song3(),

                                  Song1(),
                                  Song2(),
                                  Song3(),
                                ],
                              ),
                            ),
                          ),
                        )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 60,
        color: Colors.transparent,
        child: Center(
          child: GestureDetector(
            onTap: (){
              Get.to(Select_Album_2());
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
                child: AppText(text: "Done", SizeofFont: 20,textcolor: white,),
              ),
            ),
          ),
        )
        ,
      ),

    );
  }
}
