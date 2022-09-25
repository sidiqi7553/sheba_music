import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

import '../../Widgets/Songs.dart';


class Artist_New_Releases extends StatelessWidget {
  String title;
  Widget? seeAll;
  Artist_New_Releases({Key? key,this.title="New Releases",this.seeAll}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // child: Column(
      //   children: [
      //     ListTile(
      //       title: AppText(
      //         text: title,
      //         SizeofFont: 18,
      //         textcolor: white,
      //       ),
      //       trailing: InkWell(
      //         onTap: () {
      //           Get.to(seeAll);
      //         },
      //         child: AppText(
      //           text: "See All",
      //           SizeofFont: 15,
      //           textcolor: primary,
      //         ),
      //       ),
      //     ),
      //     SingleChildScrollView(
      //       scrollDirection: Axis.horizontal,
      //       child: Container(
      //         child: Column(
      //           children: [
      //
      //             SingleChildScrollView(
      //               scrollDirection: Axis.horizontal,
      //               child: Row(
      //                 children: [
      //                   Container(
      //                       width: MediaQuery.of(context).size.width * 0.7,
      //                       child: Song1(
      //
      //                       )
      //                   ),
      //                   Container(
      //                       width: MediaQuery.of(context).size.width * 0.7,
      //                       child: Song1()
      //                   ),
      //                   Container(
      //                       width: MediaQuery.of(context).size.width * 0.7,
      //                       child: Song3()),
      //                   Container(
      //                       width: MediaQuery.of(context).size.width * 0.7,
      //                       child: Song3()),
      //                 ],
      //               ),
      //             ),
      //             SingleChildScrollView(
      //               scrollDirection: Axis.horizontal,
      //               child: Row(
      //                 children: [
      //                   Container(
      //                       width: MediaQuery.of(context).size.width * 0.7,
      //                       child:
      //                       Song2()
      //                   ),
      //                   Container(
      //                       width: MediaQuery.of(context).size.width * 0.7,
      //                       child: Song2()),
      //                   Container(
      //                       width: MediaQuery.of(context).size.width * 0.7,
      //                       child: Song1(
      //
      //                       )
      //                   ),
      //                   Container(
      //                       width: MediaQuery.of(context).size.width * 0.7,
      //                       child: Song1()
      //                   ),
      //                 ],
      //               ),
      //             ),
      //             SingleChildScrollView(
      //               scrollDirection: Axis.horizontal,
      //               child: Row(
      //                 children: [
      //                   Container(
      //                       width: MediaQuery.of(context).size.width * 0.7,
      //                       child: Song3()),
      //                   Container(
      //                       width: MediaQuery.of(context).size.width * 0.7,
      //                       child: Song3()),
      //                   Container(
      //                       width: MediaQuery.of(context).size.width * 0.7,
      //                       child:
      //                       Song2()
      //                   ),
      //                   Container(
      //                       width: MediaQuery.of(context).size.width * 0.7,
      //                       child: Song2()),
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     )
      //   ],
      // ),
    );
  }
}
