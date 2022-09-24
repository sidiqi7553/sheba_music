import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/Wallet/Wallet_Main.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';
import 'package:sheba_music/const/App_Colors.dart';

class Producer_Edit_Profile extends StatefulWidget {
  const Producer_Edit_Profile({Key? key}) : super(key: key);

  @override
  State<Producer_Edit_Profile> createState() => _Edit_ProfileState();
}

class _Edit_ProfileState extends State<Producer_Edit_Profile> {
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

          title: "Edit Profile",
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
                            dashPattern: [8,6],
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
                                              'Edit Cover Photo',
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
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          pickphoto();
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
                            dashPattern: [8,6],
                            strokeCap: StrokeCap.butt,
                            child: Container(
                              height: 150,

                              width: MediaQuery.of(context).size.width,
                              decoration: temp == null
                                  ? BoxDecoration(
                                color: textformfieldColor,
                                borderRadius: BorderRadius.circular(5),
                              )
                                  : BoxDecoration(
                                color: Colors.transparent,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: FileImage(File(temp!.path!)),
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: temp == null
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
                                        'Edit Profile Photo',
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
                                      temp = null;
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
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
