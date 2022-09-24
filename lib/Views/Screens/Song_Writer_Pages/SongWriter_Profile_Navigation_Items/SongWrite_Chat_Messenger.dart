

import 'package:flutter/material.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:avatar_view/avatar_view.dart';


import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sheba_music/const/App_Text.dart';

class SongWrite_Chat_Messenger extends StatefulWidget {
  const SongWrite_Chat_Messenger({Key? key}) : super(key: key);

  @override
  State<SongWrite_Chat_Messenger> createState() => _Chat_MessengerState();
}

class _Chat_MessengerState extends State<SongWrite_Chat_Messenger> {
  TextEditingController _sendMessageController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          title: "Influencer Name",
          action: Container()
        ),
        ),
      body: BackGround_Container(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height*0.8,
            child: getBody(),
          ),
        ),
      ),
      bottomSheet: getBottom(),
    );
  }

Widget getBottom() {
  return Container(
    height: 70,
    width: double.infinity,
    decoration: BoxDecoration(color: primary, boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.25),
        spreadRadius: 0,
        blurRadius: 10,
        offset: Offset(0, 0),
      )
    ]),
    child: Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width*0.6,
                height: 50,
                decoration: BoxDecoration(
                    color: white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: Offset(0, 0),
                      )
                    ],
                    borderRadius: BorderRadius.circular(25)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: TextField(
                    cursorColor: black,
                    controller: _sendMessageController,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10, top: 13),
                        border: InputBorder.none,
                        hintText: "Type a message",
                        hintStyle: GoogleFonts.poppins(color: Colors.grey),
                        suffixIcon: Container(
                          width: 90,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0),
                                  child: VerticalDivider(
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                                SvgPicture.asset(
                                  "assets/Icons/mic.svg",
                                  height: 20,
                                ),
                                SvgPicture.asset(
                                  "assets/Icons/messengerSend.svg",
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                        )),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.29,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SvgPicture.asset(
                  "assets/Icons/gif.svg",
                  height: 20,
                ),
                SvgPicture.asset(
                  "assets/Icons/camera.svg",
                  height: 30,
                ),
                SvgPicture.asset(
                  "assets/Icons/smile.svg",
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget getBody() {
  return ListView(
    padding: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 80),
    children: List.generate(messages.length, (index) {
      return ChatBubble(
        isMe: messages[index]['isMe'],
        messageType: messages[index]['messageType'],
        message: messages[index]['message'],
        profileImg: messages[index]['profileImg'],
        time: messages[index]['time'],
      );
    }),
  );
}
}

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    Key? key,
    this.isMe = false,
    this.profileImg = '',
    this.message = '',
    this.messageType = 1,
    required this.time,
  }) : super(key: key);
  final bool isMe;
  final String profileImg;
  final String message;
  final int messageType;
  final String time;

  @override
  Widget build(BuildContext context) {
    if (isMe) {
      return Padding(
        padding: const EdgeInsets.all(1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            AppText(
              text: time,
              SizeofFont: 15,
              textcolor: white,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
            ),
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                    color: primary, borderRadius: getMessageType(messageType)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 13.0, vertical: 29),
                  child: Text(
                    message,
                    style: TextStyle(color: white, fontSize: 17),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return Padding(
        padding: EdgeInsets.all(1.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AvatarView(
              radius: 25,
              borderColor: Colors.grey,
              avatarType: AvatarType.CIRCLE,
              backgroundColor: Colors.red,
              imagePath:
              profileImg,

              placeHolder: Container(
                child: Icon(Icons.person, size: 50,),
              ),
              errorWidget: Container(
                child: Icon(Icons.error, size: 50,),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 1.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: white
                      ,
                      borderRadius: getMessageType(messageType)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 13.0, vertical: 25),
                    child: Text(
                      message,
                      style: TextStyle(color: primary, fontSize: 17),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.1,
            ),
            AppText(
              text: time,
              SizeofFont: 15,
              textcolor: white,
            ),
          ],
        ),
      );
    }
  }

  getMessageType(messageType) {
    if (isMe) {
      // start message
      if (messageType == 1) {
        return BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(0),
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10));
      }
      // middle message
      else if (messageType == 2) {
        return BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(0),
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10));
      }
      // end message
      else if (messageType == 3) {
        return BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(0),
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10));
      }
      // standalone message
      else {
        return BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(0),
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10));
      }
    }
    // for sender bubble
    else {
      // start message
      if (messageType == 1) {
        return BorderRadius.only(
            topLeft: Radius.circular(0),
            bottomLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20));
      }
      // middle message
      else if (messageType == 2) {
        return BorderRadius.only(
            topLeft: Radius.circular(0),
            bottomLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20));
      }
      // end message
      else if (messageType == 3) {
        return BorderRadius.only(
            topLeft: Radius.circular(0),
            bottomLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20));
      }
      // standalone message
      else {
        return BorderRadius.only(
            topLeft: Radius.circular(0),
            bottomLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20));
      }
    }
  }
}


List userMessages = [
  {
    "id": 1,
    "name": "Michael Dam",
    "img":
    "https://images.unsplash.com/photo-1571741140674-8949ca7df2a7?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "online": true,
    "story": true,
    "message": "How are you doing?",
    "created_at": "1:00 pm"
  },
  {
    "id": 2,
    "name": "Charly Race",
    "img":
    "https://images.unsplash.com/photo-1467272046618-f2d1703715b1?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "online": false,
    "story": false,
    "message": "Long time no see!!",
    "created_at": "12:00 am"
  },
  {
    "id": 3,
    "name": "Tyler Nix",
    "img":
    "https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3319&q=80",
    "online": false,
    "story": true,
    "message": "Glad to know you in person!",
    "created_at": "3:30 pm"
  },
  {
    "id": 4,
    "name": "Kirill Bishop",
    "img":
    "https://images.unsplash.com/photo-1536763843054-126cc2d9d3b0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
    "online": false,
    "story": false,
    "message": "I'm doing fine and how about you?",
    "created_at": "9:00 am"
  },
  {
    "id": 5,
    "name": "Lesly Liverani",
    "img":
    "https://images.unsplash.com/photo-1521572267360-ee0c2909d518?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80",
    "online": true,
    "story": false,
    "message": "What is your real name?",
    "created_at": "11:25 am"
  },
  {
    "id": 6,
    "name": "Valerie Deluvio",
    "img":
    "https://images.unsplash.com/photo-1523264939339-c89f9dadde2e?ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80",
    "online": true,
    "story": true,
    "message": "I'm happy to be your friend",
    "created_at": "10:00 am"
  },
  {
    "id": 7,
    "name": "Frank Henry",
    "img":
    "https://images.unsplash.com/photo-1458696352784-ffe1f47c2edc?ixlib=rb-1.2.1&auto=format&fit=crop&w=1951&q=80",
    "online": false,
    "story": false,
    "message": "Thanks for your help.",
    "created_at": "2:34 pm"
  },
  {
    "id": 8,
    "name": "Joanna Lackmann",
    "img":
    "https://images.unsplash.com/photo-1519531591569-b84b8174b508?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
    "online": false,
    "story": true,
    "message": "I just arrived home.",
    "created_at": "1:12 am"
  }
];

// list of messages
List messages = [
  {
    "isMe": true,
    "messageType": 1,
    "time": "10:54 PM",
    "message": "Ubuntu jng hery",
    "profileImg":
    "https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3319&q=80"
  },
  {
    "isMe": true,
    "messageType": 2,
    "time": "10:13 PM",
    "message": "Need to use code to command",
    "profileImg":
    "https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3319&q=80"
  },
  {
    "isMe": true,
    "messageType": 3,
    "message": "Tov work tor hery",
    "time": "10:13 PM",
    "profileImg":
    "https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3319&q=80"
  },
  {
    "isMe": false,
    "messageType": 1,
    "message": "me hate you",
    "time": "10:13 PM",
    "profileImg":
    "https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3319&q=80"
  },
  {
    "isMe": false,
    "messageType": 2,
    "message": "bah",
    "time": "10:13 PM",
    "profileImg":
    "https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3319&q=80"
  },
  {
    "isMe": false,
    "messageType": 3,
    "message": "-_-",
    "time": "10:13 PM",
    "profileImg":
    "https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3319&q=80"
  },
  {
    "isMe": true,
    "messageType": 1,
    "message": "Som muk",
    "time": "10:13 PM",
    "profileImg":
    "https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3319&q=80"
  },
  {
    "isMe": true,
    "time": "10:13 PM",
    "messageType": 3,
    "message": "Ory Reang",
    "profileImg":
    "https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3319&q=80"
  },
  {
    "isMe": false,
    "messageType": 1,
    "time": "10:13 PM",
    "message": "Eng use ah laptop nus ubuntu",
    "profileImg":
    "https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3319&q=80"
  },
  {
    "isMe": false,
    "messageType": 2,
    "time": "10:13 PM",
    "message": "code teat ban jenh",
    "profileImg":
    "https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3319&q=80"
  },
  {
    "isMe": false,
    "messageType": 3,
    "time": "10:13 PM",
    "message": "use laptop neng lerk na kor code",
    "profileImg":
    "https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3319&q=80"
  },
  {
    "isMe": true,
    "messageType": 4,
    "time": "10:13 PM",
    "message": "Oh hahahah good",
    "profileImg":
    "https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3319&q=80"
  },
  {
    "isMe": false,
    "time": "10:13 PM",
    "messageType": 4,
    "message":
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
    "profileImg":
    "https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3319&q=80"
  }
];

