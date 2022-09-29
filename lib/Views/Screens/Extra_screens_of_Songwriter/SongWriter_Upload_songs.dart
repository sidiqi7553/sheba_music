import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sheba_music/Views/Screens/Extra_Screens_of_Artist/start_live_streaming.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/customtextformfield.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

import '../Guest_Pages/Wallet/Wallet_Main.dart';

class SongWriter_Upload_songs extends StatefulWidget {
  const SongWriter_Upload_songs({Key? key}) : super(key: key);

  @override
  State<SongWriter_Upload_songs> createState() => _SongWriter_Upload_songsState();
}

class _SongWriter_Upload_songsState extends State<SongWriter_Upload_songs> {
  List<String> countries = ['USA', 'India'];
  List<String> indiaProvince = ['New Delhi', 'Bihar', 'Rajasthan'];
  List<String> usaProvince = ['Texas', 'Florida', 'California'];

  List<String> provinces = [];
  String? selectedCountry;
  String? selectedProvince;

  List<String> catagory = [
    "All",
    "Podcast",
    "Afrobeats",
    "Life-time",
  ];
  int list = 0;

  List<String> genre = [
    "All",
    "Podcast",
    "Afrobeats",
    "Life-time",
  ];
  int list2 = 0;

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
      type: FileType.audio,
    );
    if (image == null) return;
    setState(() {
      temp2 = image.files.first;
    });
  }

  PlatformFile? temp3;

  pickLyrics() async {
    final image =
    // ignore: invalid_use_of_visible_for_testing_member
    await FilePicker.platform.pickFiles(
      type: FileType.media,
    );
    if (image == null) return;
    setState(() {
      temp3 = image.files.first;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          nextscreen: Wallet_Main(),
          title: "Upload Song",
          action: ActionIcon(
            icon: SvgPicture.asset("assets/Icons/Wallet.svg"),
          ),
        ),
      ),
      body: BackGround_Container(
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                pickCoverphoto();
              },
              child: Container(
                height: 150,
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
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
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SvgPicture.asset(
                              'assets/Icons/audio.svg',
                              color: white,
                              height: 50,
                            ),
                            Text(
                              'Select Audio',
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
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
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
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SvgPicture.asset(
                              'assets/Icons/Plus.svg',
                              color: white,
                              height: 50,
                            ),
                            Text(
                              'Upload Cover Art',
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
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                pickLyrics();
              },
              child: Container(
                height: 150,
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
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
                    decoration: temp3 == null
                        ? BoxDecoration(
                      color: textformfieldColor,
                      borderRadius: BorderRadius.circular(5),
                    )
                        : BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: FileImage(File(temp3!.path!)),
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: temp3 == null
                        ? Center(
                      child: Container(
                        height: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SvgPicture.asset(
                              'assets/Icons/audio.svg',
                              color: white,
                              height: 50,
                            ),
                            Text(
                              'Upload Lyrics',
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
                            temp3 = null;
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
              hintText: "Enter Song Title",
              width: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: ListTile(
                horizontalTitleGap: 20,
                title: AppText(
                  text: "Select Mood",
                  SizeofFont: 15,
                  textcolor: white,
                ),
              ),
            ),
            Container(
              height: 35,
              margin: const EdgeInsets.symmetric(horizontal: 00, vertical: 00),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(25)),
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                // controller: scrollController,
                  itemCount: catagory.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          list = index;
                        });
                        print(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 00, vertical: 5),
                          width: MediaQuery.of(context).size.width * 0.24,
                          height: 25,
                          decoration: BoxDecoration(
                            color: containercolor,
                            border: list == index
                                ? Border.all(color: primary)
                                : Border.all(color: Colors.transparent),
                            borderRadius: list == index
                                ? BorderRadius.circular(25)
                                : BorderRadius.circular(25),
                          ),
                          child: Neumorphic(
                            style: NeumorphicStyle(
                                surfaceIntensity: 0.9,
                                shadowLightColorEmboss: black,
                                shape: NeumorphicShape.concave,
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(12)),
                                depth: -3,
                                lightSource: LightSource.bottomRight,
                                color: containercolor),
                            child: Center(
                                child: Text(
                                  catagory[index],
                                  style: TextStyle(fontSize: 13, color: white),
                                )),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: ListTile(
                horizontalTitleGap: 20,
                title: AppText(
                  text: "Select Genre",
                  SizeofFont: 15,
                  textcolor: white,
                ),
              ),
            ),
            Container(
              height: 35,
              margin: const EdgeInsets.symmetric(horizontal: 00, vertical: 00),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(25)),
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                // controller: scrollController,
                  itemCount: catagory.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          list2 = index;
                        });
                        print(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 00, vertical: 5),
                          width: MediaQuery.of(context).size.width * 0.24,
                          height: 25,
                          decoration: BoxDecoration(
                            color: containercolor,
                            border: list2 == index
                                ? Border.all(color: primary)
                                : Border.all(color: Colors.transparent),
                            borderRadius: list2 == index
                                ? BorderRadius.circular(25)
                                : BorderRadius.circular(25),
                          ),
                          child: Neumorphic(
                            style: NeumorphicStyle(
                                surfaceIntensity: 0.9,
                                shadowLightColorEmboss: black,
                                shape: NeumorphicShape.concave,
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(12)),
                                depth: -3,
                                lightSource: LightSource.bottomRight,
                                color: containercolor),
                            child: Center(
                                child: Text(
                                  genre[index],
                                  style: TextStyle(fontSize: 13, color: white),
                                )),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Column(
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
            SizedBox(height: 160,)

          ]),
        ),
      ),

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
