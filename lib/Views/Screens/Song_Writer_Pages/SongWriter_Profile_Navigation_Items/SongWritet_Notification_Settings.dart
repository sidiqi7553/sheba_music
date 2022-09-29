import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

class SongWrite_Notification_Settings extends StatefulWidget {
  const SongWrite_Notification_Settings({Key? key}) : super(key: key);

  @override
  State<SongWrite_Notification_Settings> createState() => _Notification_SettingsState();
}

class _Notification_SettingsState extends State<SongWrite_Notification_Settings> {
  bool status1 = false;
  bool status2 = false;
  bool status3 = false;
  bool status4 = false;
  bool status5 = false;
  bool status6 = false;
  bool status7 = false;
  bool status8 = false;
  bool status9 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          title: "Notification Settings",
          action: Container(),
        ),
      ),
      body: BackGround_Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: ListTile(
                  leading: AppText(text: "New Song / Album Notifications", SizeofFont: 16,textcolor: white,WeightofFont: FontWeight.w600,),
                  trailing:   Container(
                    height: 50,
                    width: 50,
                    child: flutterswitch(),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: ListTile(
                  leading: AppText(text: "New Song / Album Emails", SizeofFont: 16,textcolor: white,WeightofFont: FontWeight.w600,),
                  trailing:   Container(
                    height: 50,
                    width: 50,
                    child: flutterswitch(),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: ListTile(
                  leading: AppText(text: "Comment Replies", SizeofFont: 16,textcolor: white,WeightofFont: FontWeight.w600,),
                  trailing:   Container(
                    height: 50,
                    width: 50,
                    child: flutterswitch(),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: ListTile(
                  leading: AppText(text: "Marketing Notification", SizeofFont: 16,textcolor: white,WeightofFont: FontWeight.w600,),
                  trailing:   Container(
                    height: 50,
                    width: 50,
                    child: flutterswitch(),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: ListTile(
                  leading: AppText(text: "Artists Message Notifications", SizeofFont: 16,textcolor: white,WeightofFont: FontWeight.w600,),
                  trailing:   Container(
                    height: 50,
                    width: 50,
                    child: flutterswitch(),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: ListTile(
                  leading: AppText(text: "Transaction Notifications", SizeofFont: 16,textcolor: white,WeightofFont: FontWeight.w600,),
                  trailing:   Container(
                    height: 50,
                    width: 50,
                    child: flutterswitch(),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: ListTile(
                  leading: AppText(text: "Purchase Notifications", SizeofFont: 16,textcolor: white,WeightofFont: FontWeight.w600,),
                  trailing:   Container(
                    height: 50,
                    width: 50,
                    child: flutterswitch(),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: ListTile(
                  leading: AppText(text: "Ticket Notifications", SizeofFont: 16,textcolor: white,WeightofFont: FontWeight.w600,),
                  trailing:   Container(
                    height: 50,
                    width: 50,
                    child: flutterswitch(),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: ListTile(
                  leading: AppText(text: "Report Notifications", SizeofFont: 16,textcolor: white,WeightofFont: FontWeight.w600,),
                  trailing:   Container(
                    height: 50,
                    width: 50,
                    child: flutterswitch(),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: ListTile(
                  leading: AppText(text: "Play Milestones", SizeofFont: 16,textcolor: white,WeightofFont: FontWeight.w600,),
                  trailing:   Container(
                    height: 50,
                    width: 50,
                    child: flutterswitch(),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: ListTile(
                  leading: AppText(text: "New Supporter", SizeofFont: 16,textcolor: white,WeightofFont: FontWeight.w600,),
                  trailing:   Container(
                    height: 50,
                    width: 50,
                    child: flutterswitch(),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: ListTile(
                  leading: AppText(text: "Live Stream Notifications", SizeofFont: 16,textcolor: white,WeightofFont: FontWeight.w600,),
                  trailing:   Container(
                    height: 50,
                    width: 50,
                    child: flutterswitch(),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: ListTile(
                  leading: AppText(text: "Tag Notifications", SizeofFont: 16,textcolor: white,WeightofFont: FontWeight.w600,),
                  trailing:   Container(
                    height: 50,
                    width: 50,
                    child: flutterswitch(),

                  ),
                ),
              ),

              SizedBox(height: 40,)

            ],
          ),
        ),
      ),
      bottomSheet:   SizedBox(
        height: 50,
        width: double.infinity,

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 20,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(left: 70,right: 70,top: 0),
            decoration: BoxDecoration(
              color: primary,
              borderRadius: BorderRadius.circular(10),

            ),
            child: Center(
              child: AppText(text: "Update", SizeofFont: 20,textcolor: white,),
            ),
          ),
        ),
      ),
    );
  }
}


class flutterswitch extends StatefulWidget {
  const flutterswitch({Key? key}) : super(key: key);

  @override
  State<flutterswitch> createState() => _flutterswitchState();
}

class _flutterswitchState extends State<flutterswitch> {
  bool Status = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(

        child: FlutterSwitch(
          activeColor: primary,
          width: 40.0,
          height: 20.0,
          valueFontSize: 1.0,
          toggleSize: 20.0,
          value: Status,
          borderRadius: 20.0,
          padding: 2.0,
          showOnOff: true,
          onToggle: (val) {
            setState(() {
              Status = val;
            });
          },
        ),
      ),

    );
  }
}
