import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sheba_music/Views/Widgets/HomeOriginModals/tickets.dart';
import 'package:sheba_music/Views/Widgets/Universal_Container.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

import '../../../../Widgets/BackGround_Container.dart';
import '../Navigation_Items/Tickets_Details.dart';

class All_Tickets extends StatefulWidget {
  const All_Tickets({Key? key}) : super(key: key);

  @override
  State<All_Tickets> createState() => _All_TicketsState();
}

class _All_TicketsState extends State<All_Tickets> {
  @override
  Widget build(BuildContext context) {
    return BackGround_Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 0.0, right: 0),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                      itemCount: 30,
                      itemBuilder: (ctx, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 20.0,right: 20),
                          child: GestureDetector(
                            onTap: () {
                              Get.to(Tickets_Details());
                            },
<<<<<<< Updated upstream
                            child: Tickets_Details_Widget(),

=======

                            child: Tickets_Details_Widget(),

                            // child: Universal_Container(
                            //   height: 130,
                            //   widht: double.infinity,
                            //   child: Stack(
                            //     children: [
                            //       Row(
                            //         children: [
                            //           Flexible(
                            //               flex: 3,
                            //               child: Container(
                            //                 decoration: const BoxDecoration(
                            //                     borderRadius: BorderRadius.only(
                            //                         topLeft:
                            //                             Radius.circular(15),
                            //                         bottomLeft:
                            //                             Radius.circular(15)),
                            //                     image: DecorationImage(
                            //                         image: AssetImage(
                            //                             "assets/Images/victoria.png"),
                            //                         fit: BoxFit.fitWidth)),
                            //               )),
                            //           Flexible(
                            //               flex: 4,
                            //               child: Container(
                            //                 decoration: const BoxDecoration(
                            //                     color: grey,
                            //                     border: Border(
                            //                       top: BorderSide(
                            //                           color: primary),
                            //                       right: BorderSide(
                            //                           color: primary),
                            //                       bottom: BorderSide(
                            //                           color: primary),
                            //                     )),
                            //                 child: Container(
                            //                   height: double.infinity,
                            //                   width: double.infinity,
                            //                   child: Column(
                            //                     crossAxisAlignment:
                            //                         CrossAxisAlignment.start,
                            //                     mainAxisAlignment:
                            //                         MainAxisAlignment
                            //                             .spaceEvenly,
                            //                     children: [
                            //                       Padding(
                            //                         padding:
                            //                             const EdgeInsets.only(
                            //                                 left: 20.0),
                            //                         child: AppText(
                            //                           text: "Concert Name",
                            //                           SizeofFont: 17,
                            //                           textcolor: white,
                            //                           WeightofFont:
                            //                               FontWeight.w700,
                            //                         ),
                            //                       ),
                            //                       Padding(
                            //                         padding:
                            //                             const EdgeInsets.only(
                            //                                 right: 30.0,
                            //                                 left: 5),
                            //                         child: Row(
                            //                           mainAxisAlignment:
                            //                               MainAxisAlignment
                            //                                   .spaceEvenly,
                            //                           children: [
                            //                             AppText(
                            //                               text: "Singer Name",
                            //                               SizeofFont: 10,
                            //                               textcolor:
                            //                                   whiteforsubtitle,
                            //                             ),
                            //                             Container(
                            //                               height: 20,
                            //                               width: 50,
                            //                               decoration:
                            //                                   BoxDecoration(
                            //                                 color:
                            //                                     textformfieldColor,
                            //                                 border: Border.all(
                            //                                   color: primary,
                            //                                 ),
                            //                                 borderRadius:
                            //                                     BorderRadius
                            //                                         .circular(
                            //                                             20),
                            //                                 // boxShadow: [
                            //                                 //   BoxShadow(
                            //                                 //       offset: Offset(-8,-8),
                            //                                 //       color: Colors.black.withOpacity(0.25),
                            //                                 //       blurRadius: 16,
                            //                                 //       inset: true
                            //                                 //
                            //                                 //   ),
                            //                                 //   BoxShadow(
                            //                                 //       offset: Offset(8,8),
                            //                                 //       color: Colors.black.withOpacity(0.25),
                            //                                 //       blurRadius: 16,
                            //                                 //       inset: true
                            //                                 //   ),
                            //                                 //
                            //                                 // ]
                            //                               ),
                            //                               child: Center(
                            //                                 child: AppText(
                            //                                   text: "Music",
                            //                                   textcolor: white,
                            //                                   SizeofFont: 10,
                            //                                 ),
                            //                               ),
                            //                             )
                            //                           ],
                            //                         ),
                            //                       ),
                            //                       Padding(
                            //                         padding:
                            //                             const EdgeInsets.only(
                            //                                 right: 50.0,
                            //                                 left: 10),
                            //                         child: Row(
                            //                           mainAxisAlignment:
                            //                               MainAxisAlignment
                            //                                   .spaceEvenly,
                            //                           children: [
                            //                             Stack(
                            //                               children: [
                            //                                 Container(
                            //                                   margin:
                            //                                       const EdgeInsets
                            //                                           .only(
                            //                                     left: 0,
                            //                                   ),
                            //                                   height: 20,
                            //                                   width: 20,
                            //                                   decoration:
                            //                                       BoxDecoration(
                            //                                     shape: BoxShape
                            //                                         .circle,
                            //                                     color:
                            //                                         Colors.blue,
                            //                                     image:
                            //                                         const DecorationImage(
                            //                                       image: AssetImage(
                            //                                           "assets/Images/victoria.png"),
                            //                                       fit: BoxFit
                            //                                           .cover,
                            //                                     ),
                            //                                     border:
                            //                                         Border.all(
                            //                                       color: white,
                            //                                       width: 1.5,
                            //                                     ),
                            //                                   ),
                            //                                 ),
                            //                                 Container(
                            //                                   margin:
                            //                                       const EdgeInsets
                            //                                           .only(
                            //                                     left: 10,
                            //                                   ),
                            //                                   height: 20,
                            //                                   width: 20,
                            //                                   decoration:
                            //                                       BoxDecoration(
                            //                                     border:
                            //                                         Border.all(
                            //                                       color: white,
                            //                                       width: 1.5,
                            //                                     ),
                            //                                     shape: BoxShape
                            //                                         .circle,
                            //                                     image:
                            //                                         const DecorationImage(
                            //                                       image: AssetImage(
                            //                                           "assets/Images/victoria.png"),
                            //                                       fit: BoxFit
                            //                                           .cover,
                            //                                     ),
                            //                                   ),
                            //                                 ),
                            //                                 Container(
                            //                                   margin:
                            //                                       const EdgeInsets
                            //                                           .only(
                            //                                     left: 20,
                            //                                   ),
                            //                                   height: 20,
                            //                                   width: 20,
                            //                                   decoration:
                            //                                       BoxDecoration(
                            //                                     border:
                            //                                         Border.all(
                            //                                       color: white,
                            //                                       width: 1.5,
                            //                                     ),
                            //                                     shape: BoxShape
                            //                                         .circle,
                            //                                     image:
                            //                                         const DecorationImage(
                            //                                       image: AssetImage(
                            //                                           "assets/Images/victoria.png"),
                            //                                       fit: BoxFit
                            //                                           .cover,
                            //                                     ),
                            //                                   ),
                            //                                 ),
                            //                               ],
                            //                             ),
                            //                             AppText(
                            //                               text: "2k+ going",
                            //                               SizeofFont: 10,
                            //                               textcolor:
                            //                                   whiteforsubtitle,
                            //                             )
                            //                           ],
                            //                         ),
                            //                       ),
                            //                       Padding(
                            //                         padding:
                            //                             const EdgeInsets.only(
                            //                                 left: 18.0,
                            //                                 right: 10),
                            //                         child: Row(
                            //                           mainAxisAlignment:
                            //                               MainAxisAlignment
                            //                                   .spaceEvenly,
                            //                           children: [
                            //                             SvgPicture.asset(
                            //                                 "assets/Icons/Location.svg",
                            //                                 color: white,
                            //                                 height: 15),
                            //                             Padding(
                            //                               padding:
                            //                                   const EdgeInsets
                            //                                           .only(
                            //                                       right: 28.0),
                            //                               child: AppText(
                            //                                 text:
                            //                                     "Complete location",
                            //                                 SizeofFont: 9,
                            //                                 textcolor:
                            //                                     whiteforsubtitle,
                            //                               ),
                            //                             ),
                            //                             SvgPicture.asset(
                            //                               "assets/Icons/Bookmark.svg",
                            //                               color: white,
                            //                               height: 22,
                            //                             ),
                            //                           ],
                            //                         ),
                            //                       )
                            //                     ],
                            //                   ),
                            //                 ),
                            //               )),
                            //         ],
                            //       ),
                            //     ],
                            //   ),
                            // ),

>>>>>>> Stashed changes
                          ),
                        );
                      }),
                ),
              ),
              // child:
              // Column(
              //   children: [
              //     ListTile(
              //       leading: CircleAvatar(
              //         radius: 20.0,
              //         child: ClipRRect(
              //           child: Container(
              //             decoration: BoxDecoration(
              //                 image: DecorationImage(image: AssetImage("Assets/Home_images/DP_Images/Image_DP1.png"))
              //             ),
              //           ),
              //           borderRadius: BorderRadius.circular(50.0),
              //         ),
              //       ),
              //       title: Text("Maciej Kowalski"),
              //       subtitle: Text("maciej.kowalski@email.com"),
              //       trailing: Text("08:43"),
              //
              //     ),
              //
              //   ],
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
