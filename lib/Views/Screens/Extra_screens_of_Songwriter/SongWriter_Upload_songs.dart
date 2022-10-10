import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sheba_music/Views/Screens/Extra_Screens_of_Artist/Select_Album.dart';
import 'package:sheba_music/Views/Screens/Extra_Screens_of_Artist/start_live_streaming.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/GlassBox.dart';
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

  List<String> license = [
    "Basic License",
    "Premium License",
  ];
  int intlicense = 0;
  String? dropDownValue;
  String? dropDownValue2;

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
                              'assets/Icons/audio(2).svg',
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
                              'assets/Icons/Plus.svg',
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
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 00),
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
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 00),
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
                  hintText: "Enter BPM of Beat`",
                ),
                SizedBox(height: 20,),

                Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20, left: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: primary),
                        color: textformfieldColor,
                      ),
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: DropdownButton(
                            isExpanded: true,
                            value: dropDownValue,
                            iconEnabledColor: Colors.white,
                            icon: Icon(Icons.keyboard_arrow_down),
                            underline: Container(
                              color: textformfieldColor,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            dropdownColor: textformfieldColor,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            hint: Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  child: Text(
                                    "Select License Type",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ],
                            ).paddingOnly(left: 8),
                            items: [
                              DropdownMenuItem(
                                  value: "Free",
                                  child: Text(
                                    "Free",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red),
                                  )),
                              DropdownMenuItem(
                                  value: "Paid",
                                  child: Text(
                                    "Paid",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                    ),
                                  )),
                            ],
                            selectedItemBuilder: (BuildContext context) => [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    child: Text(
                                      "Free",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ).paddingOnly(left: 8),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    child: Text(
                                      "Paid",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ).paddingOnly(left: 8),
                            ],
                            onChanged: (value) {
                              setState(() {
                                dropDownValue = value.toString();
                              });
                              dropDownValue == "Free" ? "Free" : "Paid";
                            }),
                      ),
                    ).paddingOnly(bottom: 10),
                    dropDownValue == "Paid"
                        ? Container(
                      height: 35,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 00),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(35)),
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: ListView.builder(
                        // controller: scrollController,
                          itemCount: license.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (ctx, index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  intlicense = index;
                                });
                                print(context);
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 00, vertical: 5),
                                  width:
                                  MediaQuery.of(context).size.width * 0.3,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: containercolor,
                                    border: intlicense == index
                                        ? Border.all(color: primary)
                                        : Border.all(
                                        color: Colors.transparent),
                                    borderRadius: intlicense == index
                                        ? BorderRadius.circular(35)
                                        : BorderRadius.circular(35),
                                  ),
                                  child: Neumorphic(
                                    style: NeumorphicStyle(
                                        surfaceIntensity: 0.9,
                                        shadowLightColorEmboss: black,
                                        shape: NeumorphicShape.concave,
                                        boxShape:
                                        NeumorphicBoxShape.roundRect(
                                            BorderRadius.circular(12)),
                                        depth: -3,
                                        lightSource: LightSource.bottomRight,
                                        color: containercolor),
                                    child: Center(
                                        child: Text(
                                          license[index],
                                          style: TextStyle(
                                              fontSize: 10, color: white),
                                        )),
                                  ),
                                ),
                              ),
                            );
                          }),
                    )
                        : Container(),
                    SizedBox(
                      height: 20,
                    ),
                    customtextFormFieldOnlyHintText(
                      hintText: "Enter Amount",
                    ).paddingOnly(bottom: 20),
                    Container(
                      margin: EdgeInsets.only(right: 20, left: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: primary),
                        color: textformfieldColor,
                      ),
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: DropdownButton(
                            isExpanded: true,
                            value: dropDownValue2,
                            iconEnabledColor: Colors.white,
                            icon: Icon(Icons.keyboard_arrow_down),
                            underline: Container(
                              color: textformfieldColor,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            dropdownColor: textformfieldColor,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            hint: Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  child: Text(
                                    "Choose Publish Category",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ],
                            ).paddingOnly(left: 8),
                            items: [
                              DropdownMenuItem(
                                  value: "Single",
                                  child: Text(
                                    "Single",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red),
                                  )),
                              DropdownMenuItem(
                                  value: "Album",
                                  child: Text(
                                    "Album",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                    ),
                                  )),
                            ],
                            selectedItemBuilder: (BuildContext context) => [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    child: Text(
                                      "Choose Publish Category (Single)",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ).paddingOnly(left: 8),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    child: Text(
                                      "Choose Publish Category (Album)",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ).paddingOnly(left: 8),
                            ],
                            onChanged: (value) {
                              setState(() {
                                dropDownValue2 = value.toString();
                              });
                              dropDownValue2 == "Single" ? "Single" : "Album";
                            }),
                      ),
                    ).paddingOnly(bottom: 10),
                    dropDownValue2 == "Album"
                        ? Center(
                      child: TextButton(
                        onPressed: (){
                          Get.to(Select_Album());
                        },
                        child: AppText(text: "Select Album / EP ", SizeofFont: 14,textcolor: yellow,),
                      ),
                    )
                        : Container(),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 150,
                ),
              ],
            ),


          ]),
        ),
      ),


        bottomSheet: GlassBox(
            width: double.infinity,
            height: 80.0,
            child: Center(
              child: GestureDetector(
                onTap: () {
                  // if (selectedItems.length >= 3) {
                  //   Get.to(Menu());
                  // } else {}
                },
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:
                      primary),
                  child: Center(
                    child: AppText(
                        text: "Submit",
                        SizeofFont: 20,
                        textcolor: white
                    ),
                  ),
                ),
              ),
            )),

    );
  }
}
