import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sheba_music/Views/Widgets/GlassBox.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

class purchasedPaidSongs extends StatelessWidget {
  String title,note,btntext;
  Widget? nextpage,songprice;
   purchasedPaidSongs({Key? key,this.title="Purchase Paid Beats"
   ,this.note="Click on the button to complete your Song purchase.Payment will be deducted from your wallet.",
     this.nextpage,this.songprice,this.btntext="Proceed to Payment"
   })  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [ Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0,right: 18),
              child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.close,color: white,size: 24,)),

            ),
          ),
          AppText(text: title, SizeofFont: 20,textcolor: white,WeightofFont: FontWeight.w700,)
         ,
            SizedBox(height: 50,),
            Container(
              height: 150,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
              decoration: BoxDecoration(
                color: containercolor,
                border: Border.all(color: primary),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Center(child: AppText(text: note, SizeofFont: 15,textcolor: white,align:TextAlign.center,) ,),
            ),
            SizedBox(height: 150,),
              Container(
                child: songprice,
              ),

            GestureDetector(
              onTap: (){
                Get.to(nextpage);
              },
              child: Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                decoration: BoxDecoration(
                  color: primary,
                  borderRadius: BorderRadius.circular(10),

                ),
                child: Center(
                  child: AppText(
                    text: btntext,
                    SizeofFont: 20,
                    textcolor: white,
                    WeightofFont: FontWeight.w600,
                  ),
                ),
              ),
            )
         
          ],
        )

    );
  }
}
