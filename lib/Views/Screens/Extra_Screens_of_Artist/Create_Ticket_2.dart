import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sheba_music/Views/Screens/Guest_Pages/Wallet/Wallet_Main.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/customtextformfield.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

class Create_Ticket_2 extends StatelessWidget {
  const Create_Ticket_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          nextscreen: Wallet_Main(),
          title: "Create Ticket",
          action: ActionIcon(icon: SvgPicture.asset("assets/Icons/Wallet.svg"),),
        ),
      ),
      body: BackGround_Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
              ListTile(
              horizontalTitleGap: 20,
                title: AppText(
                  text: "Add Ticket Category Variants With Price",
                  SizeofFont: 15,
                  textcolor: white,
                ),
              ),
              customTextFormFielddropdown(
                hintText: "Select Category Variants",
              ),
              SizedBox(height: 20,),
customtextFormFieldOnlyHintText(hintText: "Enter Price",
width: 1,
),

              Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 70,right: 70,top: 50,bottom: 30),
                decoration: BoxDecoration(
                  color: primary,
                  borderRadius: BorderRadius.circular(10),

                ),
                child: Center(
                  child: AppText(text: "Add", SizeofFont: 20,textcolor: white,),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: ListTile(
                  horizontalTitleGap: 20,
                  title: AppText(
                    text: "All Variants",
                    SizeofFont: 15,
                    textcolor: white,
                  ),
                ),
              ),

              SingleChildScrollView(
                child: SizedBox(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: GridView.builder(
                        gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 4 / 2,
                            crossAxisSpacing: 0,
                            mainAxisSpacing: 0),
                        itemCount: 4,
                        itemBuilder: (BuildContext ctx, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 10, top: 10),
                                child:  Container(
                                  height: 90,
                                  width: MediaQuery.of(context).size.width*0.46,
                                  decoration: BoxDecoration(
                                      color: containercolor,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: white)
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      AppText(text: "VVIP", SizeofFont: 15,textcolor: white,),
                                      AppText(text: "Price: \$ 10", SizeofFont: 15,textcolor: white,),

                                    ],
                                  ),
                                ),),
                          );
                        })),
              ),


              Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 70,right: 70,top: 30),
                decoration: BoxDecoration(
                  color: primary,
                  borderRadius: BorderRadius.circular(10),

                ),
                child: Center(
                  child: AppText(text: "Create Event", SizeofFont: 20,textcolor: white,),
                ),
              )



            ],

          ),
        ),
      ),
    );
  }
}
