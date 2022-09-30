import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/HomeTabs_items/Navigation_items/LiveStreaminng.dart';
import 'package:sheba_music/Views/songDetailsBottomSheet/purchasedPaidSongs.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';


import 'Universal_Container.dart';

class LiveStreaming_Videos extends StatelessWidget {
  String title;
  String subtitle;

  
   LiveStreaming_Videos({Key? key,
     this.title="Live Stream Name",
     this.subtitle="Marshmello,Bastille",

     

   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        livestreamingpurchase(context);
      },
      child: Universal_Container(

        height: 120,
        widht: 200,

        child: Stack(
          children: [
            Column(
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
                          children: [
                            AppText(
                              text: title,
                              SizeofFont: 10,
                              textcolor: white,
                            ),
                            AppText(
                              text:
                              subtitle,
                              SizeofFont: 8,
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
            Positioned(
                top: 20,
                right: 0,
                left: 0,
                child: SvgPicture.asset(
                    "assets/Icons/Play.svg")
            )
          ],
        ),
      ),
    );
  }
}

livestreamingpurchase(BuildContext context) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext c) {
        return FractionallySizedBox(
          heightFactor: 0.8,
          child: purchasedPaidSongs(
            songprice:  AppText(text: 'Total \$6 will Deduct', SizeofFont: 13,textcolor: white,),
            nextpage: LiveStreaminng(),
            title: "Pay and Start Live Stream",
            note: "Click on the button to complete your Live Stream Payment. Payment will be deducted from your wallet.",
          ),
        );
      });
}



class Top_Playlists_Albums extends StatelessWidget {
  String title;
  String subtitle;
   Top_Playlists_Albums({Key? key,
  this.title="DJ Playlist Name",
    this.subtitle="24 Songs",

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Universal_Container(

      height: 100,
      widht: 200,

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
              decoration: const BoxDecoration(
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
                    children: [
                      AppText(
                        text: title,
                        SizeofFont: 14,
                        textcolor: white,
                      ),
                      AppText(
                        text:
                        subtitle,
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
    );
  }
}
