import 'dart:io';

import 'package:csc_picker/csc_picker.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/Wallet/Wallet_Main.dart';
import 'package:sheba_music/Views/Screens/Login_pages/common_login/continer_templete.dart';
import 'package:sheba_music/Views/Screens/Login_pages/verify_otp_page.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/customtextformfield.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';
import 'package:sheba_music/const/App_Colors.dart';

class influencer_Edit_Profile extends StatefulWidget {
  const influencer_Edit_Profile({Key? key}) : super(key: key);

  @override
  State<influencer_Edit_Profile> createState() => _Edit_ProfileState();
}

class _Edit_ProfileState extends State<influencer_Edit_Profile> {
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
              ),

              SizedBox(
                height: 25,
              ),
              LoginTemplete(
                HintText: 'User Name',
                svgicon: SvgPicture.asset('assets/Icons/Profile.svg'),
              ),
              SizedBox(
                height: 20,
              ),
              LoginTemplete(
                HintText: 'Email Address',
                svgicon: SvgPicture.asset('assets/Icons/Email.svg'),
              ),
              SizedBox(
                height: 20,
              ),

              Container(
                margin: EdgeInsets.all(20),
                child: CSCPicker(
                  layout: Layout.vertical,
                  flagState: CountryFlag.ENABLE,
                  dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: textformfieldColor,
                      border: Border.all(color: primary, width: 1)),
                  selectedItemStyle: TextStyle(
                    color: white,
                    fontSize: 14,
                  ),
                  onCountryChanged: (country) {},
                  onStateChanged: (state) {},
                  onCityChanged: (city) {},
                  countryDropdownLabel: "*Country",
                  stateDropdownLabel: "*State",
                  cityDropdownLabel: "*City",
                  //dropdownDialogRadius: 30,
                  //searchBarRadius: 30,
                ),
              ),
              Container(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: IntlPhoneField(
                    dropdownTextStyle: TextStyle(color: white),
                    dropdownIcon: Icon(
                      Icons.arrow_drop_down,
                      color: white,
                    ),
                    style: TextStyle(color: white),
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide: BorderSide(color: primary, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide: BorderSide(color: Colors.red, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide: BorderSide(color: primary, width: 1.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide: BorderSide(color: primary, width: 1.0),
                      ),
                      fillColor: Color(0xff18191B),
                      filled: true,
                      hintText: 'Phone Number',
                      contentPadding: EdgeInsets.only(left: 15),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(VerifyOtpPage());
                },
                child: ContinerTemplete(
                  BoxText: "Update",
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
