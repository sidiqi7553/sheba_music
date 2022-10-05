import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sheba_music/Views/Widgets/Universal_Container.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';


import '../LiveStreaming_Videos.dart';

class Top_Playlists extends StatelessWidget {
  String title,name,artistname;
  Widget? seeAll;
   Top_Playlists({Key? key,this.seeAll,this.title="Top Playlists",this.name="DJ Playlist Name",this.artistname="24 songs"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [ ListTile(
          title: AppText(
            text: title,
            SizeofFont: 18,
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
          Container(
            height: 190,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 00, vertical: 20),
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(25)),
            child: ListView.builder(
              // controller: scrollController,
                itemCount: 20,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10, top: 0),
                        child: Universal_Container(

                          child: Column(
                            children: [
                              Flexible(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/Images/LiveStreamimg.png"),
                                          fit: BoxFit.fill),
                                    ),
                                  )),
                              Flexible(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomRight:
                                      Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                    ),
                                    color: containercolor,
                                  ),
                                  child: Container(
                                    width: double.infinity,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          AppText(
                                            text: name,
                                            SizeofFont: 14,
                                            textcolor: white,
                                          ),
                                          AppText(
                                            text:
                                            artistname,
                                            SizeofFont: 10,
                                            textcolor:
                                            whiteforsubtitle,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          height: 100,
                          widht: 200,
                        )
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
