
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sheba_music/Views/Widgets/customtextfield.dart';
import 'package:sheba_music/const/App_Colors.dart';

class Comments extends StatefulWidget {
  const Comments({Key? key}) : super(key: key);

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  @override
  Widget build(BuildContext context) {
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
    return Container(
      padding: EdgeInsets.only(
        top: 10,
      ),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/Images/victoria.png'),
                    fit: BoxFit.cover
                  ),
                ),
              ),
              MyInputfield(
                color: white,
                height: 40,
                width: 0.65,
                onvaluechange: (p0) {
                  val = p0;
                },
                contentpadding: const EdgeInsets.only(
                  left: 5,
                  top: 0,
                ),
                hintText: 'Write a comment',
                heading: '',
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
                    padding: const EdgeInsets.all(5),
                    child: SvgPicture.asset(
                      'assets/Icons/Send_2.svg',
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: comments,
          ),
        ],
      ),
    );
  }
}

class CommonComment extends StatelessWidget {
  String commenttxt;
  CommonComment({
    this.commenttxt =
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 15,
      ),
      child: FractionallySizedBox(
        widthFactor: 1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/Images/victoria.png',),fit: BoxFit.cover
                ),
              ),
            ),
            Flexible(
              child: FractionallySizedBox(
                widthFactor: 0.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: grey
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Victoria Malik',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: white
                            ),
                          ),
                          Text(
                            commenttxt,
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: white
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          '4W',
                          style: GoogleFonts.poppins(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: white
                          ),
                        ),
                        Text(
                          'LIke',
                          style: GoogleFonts.poppins(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                              color: white
                          ),
                        ),
                        Text(
                          'Reply',
                          style: GoogleFonts.poppins(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                              color: white
                          ),
                        ),
                        const Icon(
                          Icons.thumb_up_sharp,
                          size: 15,
                            color: white
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
