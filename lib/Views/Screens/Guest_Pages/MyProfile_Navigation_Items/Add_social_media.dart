import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';

class Add_social_media extends StatelessWidget {
  const Add_social_media({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          title: "Add Social Media",
          action: ActionIcon(icon: SvgPicture.asset("assets/Icons/Wallet.svg"),),
        )
        ,
      ),
    );
  }
}
