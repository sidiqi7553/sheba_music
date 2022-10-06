import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';
import 'package:sheba_music/const/App_Colors.dart';

import '../../../../../const/App_Text.dart';
import '../Chat_Messenger.dart';

class All_Messenger extends StatelessWidget {
  const All_Messenger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 10.0, right: 10),

            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Chat_Messenger()));
              },
              child: ListTile(
                  leading: AvatarView(
                    radius: 25,
                    borderColor: Colors.yellow,
                    avatarType: AvatarType.CIRCLE,
                    backgroundColor: Colors.red,
                    imagePath: 'assets/Images/DP_Images/Image_DP2.png',
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
                    text: 'Global Chat',
                    SizeofFont: 19,
                    textcolor: white,
                  ),
                  subtitle: AppText(
                    text: 'maciej.kowski@email.com',
                    SizeofFont: 13,
                    textcolor: white,
                  ),
                  trailing: AppText(
                    text: '01:43',
                    SizeofFont: 15,
                    textcolor: white,
                  )
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 5, top: 5),
            height: 1, color: white,),
          Container(
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
                                    builder: (context) => Chat_Messenger()));
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
          ),
        ],
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
      title: 'Global Chat',
      image: 'assets/Images/DP_Images/Image_DP2.png',
      subtitle: "maciej.kowski@email.com",
      time: "01:43"
      // discription: "simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the "

      ),
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
];
