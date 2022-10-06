import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/chart_report.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

class Reports extends StatefulWidget {
  const Reports({Key? key}) : super(key: key);

  @override
  State<Reports> createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  int current = 0;
  List<String> catagory = [
    "Week",
    "Month",
    "Year",
  ];

  List<Widget> page = [
    Week_report(),
    Container(color: white,),
    Container(color: black,),

  ];
  int list = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          title: "Reports",
          action: ActionIcon(icon: SvgPicture.asset("assets/Icons/Wallet.svg"),),
        ),
      ),
      body: BackGround_Container(child: SingleChildScrollView(

        child: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
              decoration: BoxDecoration(
                  color: textformfieldColor,
                  border: Border.all(color: primary),
                  borderRadius: BorderRadius.circular(15)
              ),
              child:Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ListTile(
                      title: AppText(text: "Taged Users", SizeofFont: 20,textcolor: white,),
                      subtitle:AppText(text: "Number of Tagged Artists, Producers and Songwriters.", SizeofFont: 11,textcolor: whiteforsubtitle,) ,
                      trailing: AppText(
                        text: "20",
                        SizeofFont: 35,
                        textcolor: white,)
                  ),
                ),
              ),

            ),
            Container(
              height: 100,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
              decoration: BoxDecoration(
                  color: textformfieldColor,
                  border: Border.all(color: primary),
                  borderRadius: BorderRadius.circular(15)
              ),
              child:Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ListTile(
                      title: AppText(text: "Tagged Songs", SizeofFont: 20,textcolor: white,),
                      subtitle:AppText(text: "Number of Songs Sold", SizeofFont: 11,textcolor: whiteforsubtitle,) ,
                      trailing: AppText(
                        text: "20",
                        SizeofFont: 35,
                        textcolor: white,)
                  ),
                ),
              ),

            ),
            Container(
              margin: EdgeInsets.only(
                top: 40,
              ),
              child: AppText(
                text: "Total Earnings From Tagged Songs",
                SizeofFont: 15,
                textcolor: white,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 5,
              ),
              child: AppText(
                text: "\$2,663.56",
                SizeofFont: 30,
                textcolor: white,
                WeightofFont: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 50,
              margin: const EdgeInsets.symmetric(
                  horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: white.withOpacity(0.5))
              ),

              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                // controller: scrollController,
                  itemCount: catagory.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          list = index;
                        });
                        print(context);
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 0),
                        width:
                        MediaQuery.of(context).size.width *
                            0.3,
                        height: 50,
                        decoration: BoxDecoration(
                          color: list == index
                              ? primary
                              : Colors.transparent,
                          borderRadius: list == index
                              ? BorderRadius.circular(15)
                              : BorderRadius.circular(15),
                        ),
                        child: Center(
                            child: Text(
                              catagory[index],
                              style: TextStyle(
                                  fontSize: 20,
                                  color: white
                              ),
                            )),
                      ),
                    );
                  }),
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.655,
                child: page[list]),


          ],
        ),

      )),
    );
  }
}

class Week_report extends StatefulWidget {
  const Week_report({Key? key}) : super(key: key);

  @override
  State<Week_report> createState() => _Week_reportState();
}

class _Week_reportState extends State<Week_report> {
  int current = 0;
  List<String> catagory = [
    "Deposit",
    "WithDraw",
  ];

  List<Widget> page = [
    Container(),
    Container(),

  ];
  int list = 0;
  @override
  Widget build(BuildContext context) {
    return Container( color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Container(
            height: 450,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)

            ),
            child: Container(
              height: 450,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: white.withOpacity(0.5)),
                    top: BorderSide(color: white.withOpacity(0.5))
                ),

              ),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: ChartReport())
                ],
              ),
            ),
          )

        ],
      ),);
  }
}
