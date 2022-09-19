import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sheba_music/Views/Widgets/Comments.dart';
import 'package:sheba_music/Views/Widgets/customtextfield.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';
import 'package:video_player/video_player.dart';

class LiveStreaminng extends StatefulWidget {
   LiveStreaminng({Key? key}) : super(key: key);

  @override
  State<LiveStreaminng> createState() => _LiveStreaminngState();
}

class _LiveStreaminngState extends State<LiveStreaminng> {
  String val = '';
  List<Widget> comments = [
    CommonComment(),
    CommonComment(
      commenttxt: 'Lorem Ipsum is simply dummy text of the printin.',
    ),
    CommonComment(
      commenttxt: "ok brother",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          title: "Live Streaming",
          action: ActionIcon(icon: SvgPicture.asset("assets/Icons/Wallet.svg"),),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(

            ),
            child: AllClips(),
          ),
          // Positioned(
          //
          //   bottom: 0,
          //
          //   child: Container(
          //     height: 200,
          //     child: Padding(
          //       padding: const EdgeInsets.only(left: 0.0, right: 0),
          //       child: Container(
          //         height: 100,
          //         child: ListView.builder(
          //             itemCount: 6,
          //
          //             itemBuilder: (ctx, index) {
          //               return ListTile(
          //                 leading: Container(
          //                   height: 35,
          //                   width: 35,
          //                   decoration: const BoxDecoration(
          //                     shape: BoxShape.circle,
          //                     image: DecorationImage(
          //                         image: AssetImage('assets/Images/Livestreamingartist.png'),
          //                         fit: BoxFit.cover
          //                     ),
          //                   ),
          //                 ),
          //                 title:
          //                 AppText(text: "User Name", SizeofFont: 15,textcolor: white,WeightofFont: FontWeight.w600,),
          //                 subtitle:AppText(text: "Lorem Ipsum is simply dummy. ", SizeofFont: 12,textcolor: whiteforsubtitle,) ,
          //               );
          //             }),
          //       ),
          //     ),
          //   ),),

          ListTile(
            leading:  Container(
              height: 50,
              width: 50,
              decoration:  BoxDecoration(
                shape: BoxShape.circle,
                border:  Border.all(color: primary),
                image: DecorationImage(
                    image: AssetImage('assets/Images/Livestreamingartist.png'),
                    fit: BoxFit.cover
                ),
              ),
            ),
            title: Row(
              children: [
                AppText(text: "Streamer Name.", SizeofFont: 15,textcolor: white,WeightofFont: FontWeight.w700,),
                AppText(text: " Streaming from 20 mins.", SizeofFont: 12,textcolor: white,),
              ],
            ),
            subtitle:     AppText(text: " Live", SizeofFont: 15,textcolor: white,WeightofFont: FontWeight.w700,),

          )

        ],
      ),
      bottomSheet: Container(
        height: 70,
        color: Colors.transparent,
        child:Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/Images/Livestreamingartist.png'),
                    fit: BoxFit.cover
                ),
              ),
            ),
            MyInputfield(
              color: containercolor,
              height: 40,
              width: 0.75,
              onvaluechange: (p0) {
                val = p0;
              },
              contentpadding: const EdgeInsets.only(
                left: 5,
                top: 2
              ),
              hintText: 'Write a comment',


              suffixicon: InkWell(
                onTap: (() {
                  setState(() {
                    comments.add(
                      CommonComment(
                        commenttxt: val,
                      ),
                    );
                  });
                  print(comments);
                }),
                child: Container(
                  width: 70,
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/Icons/Send_2.svg',color: white,
                      ),
                      SvgPicture.asset(
                        'assets/Icons/smile.svg',color: white,
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class AllClips extends StatefulWidget {
  String clipname;
  AllClips({
    Key? key,
    this.clipname = 'assets/video/short2.mp4',
  }) : super(key: key);

  @override
  State<AllClips> createState() => _AllClipsState();
}

class _AllClipsState extends State<AllClips> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    _controller = VideoPlayerController.asset(widget.clipname)
      ..setLooping(true)
      ..initialize().then((value) {
        _controller.play();
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            SizedBox(
              height:  MediaQuery.of(context).size.height*0.99,
              width: MediaQuery.of(context).size.width*0.99,
              child: InkWell(
                onTap: (() {
                  print("playing");
                  setState(() {
                    if (_controller.value.isPlaying) {
                      _controller.pause();
                    } else {
                      _controller.play();
                    }
                  });
                }),
                child: AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 60,
                width: 60,
                decoration: _controller.value.isPlaying
                    ? const BoxDecoration()
                    : BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black.withOpacity(0.6),
                ),
                child: Icon(
                  _controller.value.isPlaying ? null : Icons.play_arrow_rounded,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}