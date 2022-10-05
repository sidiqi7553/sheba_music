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
                            child: Tickets_Details_Widget(),
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
