import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';



class Trending_Artists extends StatelessWidget {
  String title;
  String name;
  Widget? seeAll;
  Widget? profilePage;
  Trending_Artists({Key? key,this.title="Trending Artists",this.seeAll,this.profilePage,this.name="Artist Name"}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
          title: AppText(
            text: title,
            SizeofFont: 20,
            textcolor: white,
          ),
          trailing: InkWell(
            onTap: () {
              Get.to(seeAll);
            },
            child: AppText(
              text: "See All",
              SizeofFont: 15,
              textcolor: primary,
            ),
          ),
        ),
          SizedBox(height: 10,),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 0.0, right: 0),
              child: Container(
                height: 120,
                child: ListView.builder(
                    itemCount: 30,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) {
                      return GestureDetector(
                        onTap: () {
                          Get.to(profilePage);
                        },
                        child: Container(
                          height: 115,
                          width: 115,
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
                                name,
                                style: GoogleFonts.poppins(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: white,
                                ),
                              ),
                            ],
                          ),
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
    );
  }
}
