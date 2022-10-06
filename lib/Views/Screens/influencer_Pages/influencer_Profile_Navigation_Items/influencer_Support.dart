import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/Universal_Container.dart';

import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

class influencer_Support extends StatefulWidget {
  const influencer_Support({Key? key}) : super(key: key);

  @override
  State<influencer_Support> createState() => _SupportState();
}

class _SupportState extends State<influencer_Support> {
  TextEditingController _sendMessageController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(title: "Support", action: Container()),
      ),
      body: BackGround_Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 30),
                child: ListTile(
                  leading: AppText(
                    text: "Live Chat With Our Experts",
                    SizeofFont: 20,
                    textcolor: whiteforsubtitle,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                child: getBody(),
              )
            ],
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
      decoration: BoxDecoration(color: Colors.transparent, boxShadow: [
        // BoxShadow(
        //   color: Colors.black.withOpacity(0.25),
        //   spreadRadius: 0,
        //   blurRadius: 10,
        //   offset: Offset(0, 0),
        // )
      ]),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 5, left: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: textformfieldColor,
                  ),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.68,
                    child: TextFormField(
                      style: TextStyle(color: white),
                      autofocus: false,
                      decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 10),
                          child: SvgPicture.asset('assets/Icons/Send_2.svg'),
                        ),
                        hintText: "Enter Your Message",
                        hintStyle: TextStyle(color: white),
                        labelStyle: TextStyle(color: white),
                        contentPadding: EdgeInsets.only(left: 10, top: 17),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: primary, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: primary, width: 1.0),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.15,
              height: 40,
              decoration: BoxDecoration(
                  color: containercolor,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: primary)),
              child: Center(
                  child: Icon(
                    Icons.camera_alt_outlined,
                    color: white,
                  )),
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
            Flexible(
              child: Universal_Container(
                height: 60.0,
                widht: MediaQuery.of(context).size.width * 0.6,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 15),
                  child: Text(
                    message,
                    style: TextStyle(color: white, fontSize: 12),
                    textAlign: TextAlign.start,
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
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 1.0),
                child: Universal_Container(
                  height: 60.0,
                  widht: MediaQuery.of(context).size.width * 0.6,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, right: 8, top: 20),
                    child: Text(
                      message,
                      style: TextStyle(color: white, fontSize: 12),
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
    "message":
        "Need to use code to command jkgkugkugkugkuglk jsdjhih jhlhlkn'j jhkjib",
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
