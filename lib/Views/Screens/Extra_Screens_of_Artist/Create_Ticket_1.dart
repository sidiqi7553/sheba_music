import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/Wallet/Wallet_Main.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/customtextformfield.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

import 'Create_Ticket_2.dart';

class Create_Ticket_1 extends StatefulWidget {
  const Create_Ticket_1({Key? key}) : super(key: key);

  @override
  State<Create_Ticket_1> createState() => _Create_Ticket_1State();
}

class _Create_Ticket_1State extends State<Create_Ticket_1> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
           nextscreen: Wallet_Main(),
          title: "Create Ticket",
          action: ActionIcon(icon: SvgPicture.asset("assets/Icons/Wallet.svg"),),
        ),
      ),
      body: BackGround_Container(
        child: SingleChildScrollView(
          child:Column(
            children: [
               SizedBox(height: 20,),
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
              SizedBox(height: 20,),

              customtextFormFieldOnlyHintText(
                hintText: "Event Name",
                width: 1,
              ),
              SizedBox(height: 20,),

              customtextFormFieldOnlyHintText(
                hintText: "Singer Name",
                width: 1,
              ),
              SizedBox(height: 20,),
           customTextFormFielddropdown(
             hintText: "Total Tickets Available",
           ),
              SizedBox(height: 20,),

              customTextFormFieldwithSuffixicon(
                hintText: "Select Date and Time",
                suffixicon: SvgPicture.asset("assets/Icons/Calendar.svg"),
              ),
              SizedBox(height: 20,),
              customTextFormFielddropdown(
                hintText: "Select Event Category",
              ),              SizedBox(height: 20,),

              customTextFormFieldwithSuffixicon(
  hintText: "Select or Add Google Location",
  suffixicon: SvgPicture.asset("assets/Icons/targetLocation.svg"),
),
              SizedBox(height: 20,),
 customtextFormFieldOnlyHintText(
   width: 1,
   hintText: 'About Event',
   maxlines: 30,
   maxlength: 250,
   height: 150,
 ),

              GestureDetector(
                onTap: (){
Get.to(Create_Ticket_2());
                },
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 70,right: 70,bottom: 30),
                  decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: Center(
                    child: AppText(text: "Next", SizeofFont: 20,textcolor: white,),
                  ),
                ),
              )

            ],
          ) ,
        ),
      ),
    );
  }
}
