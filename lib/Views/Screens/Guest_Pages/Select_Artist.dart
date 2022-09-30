import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';



import '../../Widgets/GlassBox.dart';
import '../../Widgets/inner_Pages_App_Bar.dart';


import 'Menu.dart';

class Select_Artist extends StatefulWidget {
  const Select_Artist({Key? key}) : super(key: key);

  @override
  State<Select_Artist> createState() => _Select_ArtistState();
}

class _Select_ArtistState extends State<Select_Artist> {
  int current = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(55),
          child: inner_Pages_App_Bar(
            title: "Select Artists",
            action: Container(),
          )),
      body: BackGround_Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              // Container(
              //   child: AppText(
              //     text: "Your Favorite Artists?",
              //     SizeofFont: 18,
              //     textcolor: white,
              //     WeightofFont: FontWeight.w600,
              //   ),
              // ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: AppText(
                  text: "Select At Least 3",
                  SizeofFont: 16,
                  textcolor: white,
                ),
              ),SizedBox(height: 8,),

              Container(
                  height: MediaQuery.of(context).size.height * 0.75,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.builder(
                      shrinkWrap: false,
                      scrollDirection: Axis.vertical,
                      itemCount: 30,
                      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: MediaQuery.of(context).size.width/2 /
                            (MediaQuery.of(context).size.height / 4),
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              // ontap of each card, set the defined int to the grid view index
                              current = index;
                            });
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Stack(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState((){
                                          current = 2;
                                        });
                                      },
                                      child: Container(
                                        height: 70,
                                        width: 70,
                                        decoration: BoxDecoration(
                                            border: current==2? Border.all(width: 4,color: primary):null,
                                            shape: BoxShape.circle,
                                            image: DecorationImage(

                                                image: AssetImage("assets/Images/victoria.png",),fit: BoxFit.cover
                                            )
                                        ),
                                      ),
                                    ),
                                    current==2? Positioned(
                                      top: 0,
                                      right: 0,
                                      child: Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                          color: primary,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(
                                            child: SvgPicture.asset("assets/Icons/Heart.svg",color: white,)
                                        ),
                                      ),
                                    )
                                        :Positioned(
                                        top: 0,
                                        right: 0,
                                        child: Container(
                                          height: 20,
                                          width: 20,
                                        )),
                                  ],
                                ),
                                Text(
                                  "Artist Name",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: white,
                                  ),
                                ),
                              ],
                            ),
                          ),);
                      })
                // GridView.builder(
                //     gridDelegate:
                //         const SliverGridDelegateWithMaxCrossAxisExtent(
                //             maxCrossAxisExtent: 150,
                //             childAspectRatio: 4 / 3,
                //             crossAxisSpacing: 0,
                //             mainAxisSpacing: 30),
                //     itemCount: 21,
                //     itemBuilder: (BuildContext ctx, index) {
                //
                //       return
                //       Container(
                //         height: 100,
                //         width: 100,
                //         child: Column(
                //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //           children: [
                //             Stack(
                //               children: [
                //                 GestureDetector(
                //                   onTap: () {
                //                     setState((){
                //                       current = index;
                //                     });
                //                   },
                //                   child: Container(
                //                     height: 70,
                //                     width: 70,
                //                     decoration: BoxDecoration(
                //                       border: current==index? Border.all(width: 4,color: primary):null,
                //                       shape: BoxShape.circle,
                //                       image: DecorationImage(
                //
                //                         image: AssetImage("assets/Images/victoria.png",),fit: BoxFit.cover
                //                       )
                //                     ),
                //                   ),
                //                 ),
                //                 current==index? Positioned(
                //                   top: 0,
                //                   right: 0,
                //                   child: Container(
                //                   height: 20,
                //                   width: 20,
                //                   decoration: BoxDecoration(
                //                     color: primary,
                //                     shape: BoxShape.circle,
                //                   ),
                //                   child: Center(
                //                     child: SvgPicture.asset("assets/Icons/Heart.svg",color: white,)
                //                   ),
                //                 ),
                //                 )
                //                     :Positioned(
                //                     top: 0,
                //                     right: 0,
                //                     child: Container(
                //                   height: 20,
                //                   width: 20,
                //                 )),
                //               ],
                //             ),
                //             Text(
                //               "Artist Name",
                //               style: GoogleFonts.poppins(
                //                 fontSize: 12,
                //                 fontWeight: FontWeight.w400,
                //                 color: white,
                //               ),
                //             ),
                //           ],
                //         ),
                //       );
                //     }),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: GlassBox(
          width: double.infinity,
          height: 80.0,
          child: Center(
            child: GestureDetector(
              onTap: (){
                Get.to(Menu());
              },
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width*0.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: primary
                ),
                child: Center(
                  child: AppText(text: "Next", SizeofFont: 20,textcolor: white,),
                ),
              ),
            )
            ,
          ))
    );
  }
}
