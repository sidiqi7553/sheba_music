
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/Menu_Items/Library.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/Menu_Items/Tickets.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

import '../../../TEmp/screens/search.dart';
import '../Guest_Pages/Menu_Items/Discover.dart';
import '../Guest_Pages/Menu_Items/Home.dart';
import '../Guest_Pages/Menu_Items/MyProfile.dart';
import 'Producer_Menu_Items/Discover_Producer.dart';
import 'Producer_Menu_Items/Home_Producer.dart';
import 'Producer_Menu_Items/Library_Producer.dart';
import 'Producer_Menu_Items/My_Profile_Producer.dart';
import 'Producer_Menu_Items/Search_Producer.dart';
import 'Producer_Menu_Items/Ticket_Producer.dart';





class Producer_Menu extends StatefulWidget {
  int selectedind;
  Producer_Menu({
    this.selectedind = 0,
    Key? key,
  }) : super(key: key);

  @override
  State<Producer_Menu> createState() => _MenuState();
}

class _MenuState extends State<Producer_Menu> {
  // indexcontrollar cntrl = Get.put(indexcontrollar());
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: Builder(builder: (context) {
              if (widget.selectedind == 0) {
                return  HomeProducer();
              }
              if (widget.selectedind == 1) {
                return DiscoverProducer();
              }
              if (widget.selectedind == 2) {
                return SearchProducer();
              }
              if (widget.selectedind == 3) {
                return TicketsProducer();
              }
              if (widget.selectedind == 4) {
                return LibraryProducer();
              }
              else {
                return MyProfileProducer();
              }
            }),
          ),

          bottomNavigation(context),
        ],
      ),
    );
  }

  Widget bottomNavigation(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 90,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: primary,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      bottomItems("assets/Icons/Home.svg", 'assets/Icons/Home.svg', 'Home', 0),
                      bottomItems("assets/Icons/Discover.svg", 'assets/Icons/Discover.svg', 'Discover', 1),
                      bottomItems('assets/Icons/Search.svg', 'assets/Icons/Search.svg', 'Search', 2),
                      bottomItems('assets/Icons/Ticket.svg', 'assets/Icons/Ticket.svg', 'Tickets', 3),
                      bottomItems('assets/Icons/Library.svg', 'assets/Icons/Library.svg', 'Library', 4),
                      bottomItems('assets/Icons/Profile.svg', 'assets/Icons/Profile.svg', 'Profile', 5),
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

  Stack bottomItems(String icon, String svgname, String title, int index) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: bottomSelectorIcon(icon, index),
        ),
        bottomSelector(svgname, title, index),
      ],
    );
  }

  Widget bottomSelectorIcon(
      String icon,
      int index,
      ) {
    return InkWell(
      onTap: (() {
        onindchange(index);
      }),
      child: widget.selectedind == index
          ? Container()
          : Padding(
          padding: const EdgeInsets.only(
            top: 30.0,
            left: 10,
            right: 10,
          ),
          child: SvgPicture.asset(icon,color:white,)
      ),
    );
  }

  Widget bottomSelector(
      String svgpath,
      String title,
      int index,
      ) {
    if (widget.selectedind == index) {
      return Column(
        children: [
          AnimatedContainer(
            curve: Curves.easeInOut,
            duration: const Duration(milliseconds: 200),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: white,
            ),
            child: Center(
              child: SvgPicture.asset(
                svgpath,
                color:
                primary,height: 25,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          AppText(
            text: title,
            SizeofFont: 13,
            WeightofFont: FontWeight.w500,
            textcolor: white,
          ),
        ],
      );
    } else {
      return Container();
    }
  }

  onindchange(newind) {
    setState(() {
      widget.selectedind = newind;
    });
  }
}