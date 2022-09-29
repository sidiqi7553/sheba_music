import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';
import 'package:sheba_music/const/App_Colors.dart';

import '../../../../../const/App_Text.dart';
import '../influencer_Chat_Messenger.dart';

class All_Messenger extends StatelessWidget {
  const All_Messenger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Container(
          child: ListView.builder(
              itemCount: contents.length,
              itemBuilder: (ctx, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => influencer_Chat_Messenger()));
                  },
                  child: ListTile(
                      leading: AvatarView(
                        radius: 25,
                        borderColor: Colors.yellow,
                        avatarType: AvatarType.CIRCLE,
                        backgroundColor: Colors.red,
                        imagePath: contents[index].image,
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
                      // CircleAvatar(
                      //   radius: 20.0,
                      //   child: ClipRRect(
                      //     child:
                      //     Container(
                      //       decoration: BoxDecoration(
                      //           image: DecorationImage(image: AssetImage(contents[index].image))
                      //       ),
                      //     ),
                      //     borderRadius: BorderRadius.circular(50.0),
                      //   ),
                      // ),
                      title: AppText(
                        text: contents[index].title,
                        SizeofFont: 19,
                        textcolor: white,
                      ),
                      subtitle: AppText(
                        text: contents[index].subtitle,
                        SizeofFont: 13,
                        textcolor: white,
                      ),
                      trailing: AppText(
                        text: contents[index].time,
                        SizeofFont: 15,
                        textcolor: white,
                      )),
                );
              }),
        ),
      ),
      ),
    );
  }
}

class ChatsList {
  String image;
  String title;
  String subtitle;
  String time;

  // String discription;

  ChatsList(
      {required this.image,
      required this.title,
      required this.subtitle,
      required this.time});
}

List<ChatsList> contents = [
  ChatsList(
      title: 'Maciej Kowalski',
      image: 'assets/Images/DP_Images/Image_DP2.png',
      subtitle: "maciej.kowalski@email.com",
      time: "08:43"
      // discription: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "

      ),
  ChatsList(
      title: 'Odeusz Piotrowski',
      image: 'assets/Images/DP_Images/Image_DP2.png',
      subtitle: "Will do, super, thank you 😄❤️",
      time: "Tue"
      // discription: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "

      ),
  ChatsList(
      title: 'Bożenka Malina',
      image: "assets/Images/DP_Images/Image_DP6.png",
      subtitle: "Uploaded file.",
      time: "Sun"
      // discription: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "

      ),
  ChatsList(
      title: 'Maciej Orłowski',
      image: 'assets/Images/DP_Images/Image_DP3.png',
      subtitle: "Here is another tutorial, if you...",
      time: "23 Mar"
      // discription: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "

      ),
  ChatsList(
      title: 'Krysia Eurydyka',
      image: 'assets/Images/DP_Images/Image_DP2.png',
      subtitle: "😅",
      time: "18 Mar"
      // discription: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "

      ),
  ChatsList(
      title: 'MC Bastek',
      image: 'assets/Images/DP_Images/Image_DP6.png',
      subtitle: "no pracujemy z domu przez 5 ...",
      time: "01 Feb"
      // discription: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "

      ),
  ChatsList(
      title: 'MC Bastek',
      image: 'assets/Images/DP_Images/Image_DP5.png',
      subtitle: "no pracujemy z domu przez 5 ...",
      time: "01 Feb"
      // discription: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "

      ),
  ChatsList(
      title: 'MC Bastek',
      image: 'assets/Images/DP_Images/Image_DP3.png',
      subtitle: "no pracujemy z domu przez 5 ...",
      time: "01 Feb"
      // discription: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "

      ),
];
