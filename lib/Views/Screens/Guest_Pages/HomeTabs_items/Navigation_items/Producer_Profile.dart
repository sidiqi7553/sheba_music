import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/Wallet/Wallet_Main.dart';
import 'package:sheba_music/Views/Widgets/Artist_MiniProfile.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/HomeOriginModals/New_Releases.dart';
import 'package:sheba_music/Views/Widgets/HomeOriginModals/Top_Playlists.dart';
import 'package:sheba_music/Views/Widgets/HomeOriginModals/Trending_Artists.dart';
import 'package:sheba_music/Views/Widgets/HomeOriginModals/Trending_Beats.dart';
import 'package:sheba_music/Views/Widgets/HomeOriginModals/Trending_Videos.dart';
import 'package:sheba_music/Views/Widgets/LiveStreaming_Videos.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';
import 'package:sheba_music/Views/songDetailsBottomSheet/artist_Expanded_sheet.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

class Producer_Profile extends StatefulWidget {
  const Producer_Profile({Key? key}) : super(key: key);

  @override
  State<Producer_Profile> createState() => _Producer_ProfileState();
}

class _Producer_ProfileState extends State<Producer_Profile> {
  var check = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          nextscreen: Wallet_Main(),
          title: "Producer Name",
          action: ActionIcon(icon: SvgPicture.asset("assets/Icons/Wallet.svg"),),
        ),
      ),
      body: BackGround_Container(child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: primary,width: 2),
                      borderRadius: BorderRadius.circular(20),

                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        image: AssetImage(
                          "assets/Images/victoria.png",
                        ),
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -20,
                  left: 40,
                  child: AvatarView(
                    radius: 45,
                    borderColor: Colors.yellow,
                    avatarType: AvatarType.CIRCLE,
                    backgroundColor: Colors.red,
                    imagePath: "assets/Images/victoria.png",
                    placeHolder: Container(
                      child: Icon(
                        Icons.person,
                        size: 50,
                      ),
                    ),
                    errorWidget: Container(
                      child: Icon(
                        Icons.error,
                        size: 50,
                      ),
                    ),
                  ),
                ),
                Positioned(
                    right: 30,
                    top: 230,
                    child: followbtn())
              ],
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        check = !check;
                      });
                    },
                    child: ListTile(
                      leading: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(text: "Producer Name", SizeofFont: 20,WeightofFont: FontWeight.bold,textcolor: white,),
                          AppText(text: "Contact Email For Bookings", SizeofFont: 11,textcolor: yellow,),

                        ],
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(text: "@username", SizeofFont: 13,textcolor: white,),
                          AppText(text: "info@gmailemail.com", SizeofFont: 11,textcolor: white,),

                        ],
                      ),
                      trailing: Icon(
                        check
                            ? Icons.expand_more_outlined
                            : Icons.expand_less_outlined,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: primary,
                  )
                ],
              ),
            ),
            Container(
              child: check ? null : artist_Expanded_sheet(),
            ),
            New_Releases(

            ),
            Trending_Beats(),
            Top_Playlists(
              title: "Recent Albums",
              name: "Album Name",
              artistname: "Artist Name",

            ),
            Trending_Artists(
              title: "Followers",
              name: "Name",
            ),
            Trending_Videos()
          ],
        ),
      )),
    );
  }
}
