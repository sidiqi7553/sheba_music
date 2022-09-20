import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/MyProfile_Navigation_Items/Edit_Profile.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/MyProfile_Navigation_Items/Messenger.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/MyProfile_Navigation_Items/Notifications.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';

import 'package:sheba_music/Views/Widgets/Main_Pages_App_Bar.dart';
import 'package:sheba_music/Views/songDetailsBottomSheet/MyProfile_Expand_Sheet.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

import '../../../Widgets/MyProfile_ListMenu.dart';


class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  var check = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: Main_Pages_App_Bar(
            title: AppText(text: "Profile", SizeofFont: 20, textcolor: white,)
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
              child:Container(
                height: 25,
                width: 100,
                decoration: BoxDecoration(
                  color: primary,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(-6,-6),
                      color: Colors.white.withOpacity(0.1),
                      blurRadius: 12,


                    ),
                    BoxShadow(
                      offset: Offset(6,6),
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 12,

                    )
                  ],
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: AppText(text: "Following",textcolor: white,SizeofFont: 15,),
                ),
              ),

          ),
          Positioned(
              right: 150,
              top: 230,
              child:Container(
                height: 25,
                width: 100,
                decoration: BoxDecoration(
                  color: primary,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(-6,-6),
                      color: Colors.white.withOpacity(0.1),
                      blurRadius: 12,


                    ),
                    BoxShadow(
                      offset: Offset(6,6),
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 12,

                    )
                  ],
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: AppText(text: "Followers",textcolor: white,SizeofFont: 15,),
                ),
              ),

          ),
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
                    AppText(text: "Artist Name", SizeofFont: 20,WeightofFont: FontWeight.bold,textcolor: white,),
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
        child: check ? null : MyProfile_Expand_Sheet(),
      ),


      MyProfile_ListMenu(title: "Edit Profile", svgicon: "assets/Icons/Profile.svg",nextpage: Edit_Profile(),),
      MyProfile_ListMenu(title: "Change Password", svgicon: "assets/Icons/Lock.svg"),
      MyProfile_ListMenu(title: "Notifications", svgicon: "assets/Icons/Notification.svg",nextpage: Notifications(),),
      MyProfile_ListMenuformessenger(title: "Messenger", svgicon: "assets/Icons/Chat.svg",nextpage: Messenger(),),
      MyProfile_ListMenu(title: "Delete Account", svgicon: "assets/Icons/Delete.svg"),
      MyProfile_ListMenu(title: "Purchased Tickets", svgicon: "assets/Icons/Ticket.svg"),
      MyProfile_ListMenu(title: "Support", svgicon: "assets/Icons/Chat.svg"),
      MyProfile_ListMenu(title: "Permissions", svgicon: "assets/Icons/Permission.svg"),
      MyProfile_ListMenu(title: "Privacy Policy", svgicon: "assets/Icons/PrivacyPolicy.svg"),
      MyProfile_ListMenu(title: "Rate This App", svgicon: "assets/Icons/Star1.svg"),
      MyProfile_ListMenu(title: "Share This App", svgicon: "assets/Icons/Send.svg"),

      Container(
        height: 50,
        width: MediaQuery.of(context).size.width*0.4,
        margin: EdgeInsets.symmetric(horizontal:100,vertical: 50 ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: primary,
        ),
        child: Center(
          child: AppText(
            text: "Log out",
            SizeofFont: 20,
            textcolor: white,
          ),
        ),
      )


    ],
  ),
))
    );
  }
}
