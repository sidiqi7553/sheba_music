import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/Wallet/Wallet_Main.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/const/App_Colors.dart';

import '../../../../Widgets/Songs.dart';
import '../../../../Widgets/inner_Pages_App_Bar.dart';
import '../../../../Widgets/mySearchBar.dart';

class NewReleases_SeeAll extends StatefulWidget {
  String newtitle;

  NewReleases_SeeAll({Key? key, this.newtitle = "New Release"})
      : super(key: key);

  @override
  State<NewReleases_SeeAll> createState() => _NewReleases_SeeAllState();
}

class _NewReleases_SeeAllState extends State<NewReleases_SeeAll> {
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          nextscreen: Wallet_Main(),
          title: widget.newtitle,
          action: ActionIcon(
            icon: SvgPicture.asset("assets/Icons/Wallet.svg"),
          ),
        ),
      ),
      body: BackGround_Container(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              mySearchBar(),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 0.0, right: 0),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (ctx, index) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    decoration: BoxDecoration(
                                        gradient:  LinearGradient(
                                      end: Alignment.centerRight,
                                      begin: Alignment.centerLeft,
                                      colors: [primary, white.withOpacity(0.1)],
                                    ),
                                    borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(1.5),
                                      child: GestureDetector(
                                        onTap: (){
                                          setState((){
                                            current == 1;
                                          });
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(

                                            color:current==1? Colors.red:containercolor,
                                              borderRadius: BorderRadius.circular(20)

                                          ),
                                            child: Song1()),
                                      ),
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: (){
                                    setState((){
                                      current == 2;
                                    });
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(
                                          gradient: current ==2? LinearGradient(
                                            end: Alignment.centerRight,
                                            begin: Alignment.centerLeft,
                                            colors: [primary, white.withOpacity(0.1)],
                                          ):null,
                                          borderRadius: BorderRadius.circular(20)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(1.5),
                                        child: Container(
                                            decoration: BoxDecoration(
                                              color: containercolor,
                                                borderRadius: BorderRadius.circular(20)

                                            ),
                                            child: Song2()),
                                      )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    decoration: BoxDecoration(
                                        gradient: current ==3? LinearGradient(
                                          end: Alignment.centerRight,
                                          begin: Alignment.centerLeft,
                                          colors: [primary, white.withOpacity(0.1)],
                                        ):LinearGradient(
                                          end: Alignment.centerRight,
                                          begin: Alignment.centerLeft,
                                          colors: [Colors.transparent, Colors.transparent],
                                        ),
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(1.5),
                                      child: GestureDetector(
                                        onTap: (){
                                          setState((){
                                            current == 3;
                                          });
                                        },
                                        child: Container(
                                            decoration: BoxDecoration(
                                              color: containercolor,
                                                borderRadius: BorderRadius.circular(20)

                                            ),
                                            child: Song3()),
                                      ),
                                    )),
                              ),
                            ],
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
      )),
    );
  }
}
