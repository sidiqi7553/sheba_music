import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/GlassBox.dart';
import 'package:sheba_music/const/App_Text.dart';

import '../../../../../const/App_Colors.dart';
import '../../../../Widgets/inner_Pages_App_Bar.dart';

class Producer_Going extends StatefulWidget {
  const Producer_Going({Key? key}) : super(key: key);

  @override
  State<Producer_Going> createState() => _GoingState();
}

class _GoingState extends State<Producer_Going> {
  bool current = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(title: "Going", action: Container()),
      ),
      body: BackGround_Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.builder(
                      shrinkWrap: false,
                      scrollDirection: Axis.vertical,
                      itemCount: 30,
                      gridDelegate:
                          new SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: MediaQuery.of(context).size.width /
                            2 /
                            (MediaQuery.of(context).size.height / 4),
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            // Get.to(Artist_Profile());
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage(
                                            "assets/Images/victoria.png",
                                          ),
                                          fit: BoxFit.cover)),
                                ),
                                Text(
                                  "Name",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      })

                  ),
            ],
          ),
        ),
      ),
      bottomSheet: GlassBox(
        height: 70.0,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Container(
              color: Colors.transparent,
              child: ListTile(
                title: AppText(
                  text: "2000 + going",
                  SizeofFont: 15,
                  textcolor: yellow,
                ),
                trailing: GestureDetector(
                  onTap: () {
                    setState(() {
                      current = !current;
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 140,
                    decoration: BoxDecoration(
                      color: current ? primary.withOpacity(0.6) : primary,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: AppText(
                        text: "Click to go",
                        SizeofFont: 20,
                        textcolor: current? whiteforsubtitle:white,
                      ),
                    ),
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
