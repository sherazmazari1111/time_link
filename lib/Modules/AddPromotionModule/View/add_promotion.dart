import 'package:flutter/material.dart';
import 'package:time_link_sheraz_ahmad/Modules/HomeModule/View/home_page.dart';
import 'package:time_link_sheraz_ahmad/Utils/custom_txt.dart';

import '../../../Utils/custom_appBarr.dart';
import '../../../Utils/custom_btn.dart';
import '../../OnboardingModule/view/Components/custom_container.dart';

class AddPromotion extends StatefulWidget {
  const AddPromotion({Key? key}) : super(key: key);

  @override
  State<AddPromotion> createState() => _AddPromotionState();
}

class _AddPromotionState extends State<AddPromotion> {
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;

    return Scaffold(

      body:Stack(children: [
        Container(
          height: size.height,
          width: size.width,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            CustomAppBarr(hight: size.height*.15, widt: size.width,icon: Icons.arrow_back_ios,txt: "Add Promotion",icon2: Icons.add_circle_outlined,ontp: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));},),
            Container(
              padding: EdgeInsets.only(left: 35,right: 35),
              height: size.height*.76,
              width: size.width,
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(children: [
                  SizedBox(height: 20,),
                  GraphsContainer(hight: size.height*.12,width: size.width,color1: Colors.deepPurple.withOpacity(.50),color2: Colors.purpleAccent[700],txt: "Offer Name ",borderradius: BorderRadius.circular(8),),
                  SizedBox(height: 20,),
                  GraphsContainer(hight: size.height*.12,width: size.width,color1: Colors.deepPurple.withOpacity(.50),color2: Colors.purpleAccent[700],txt: "Offer Name ",borderradius: BorderRadius.circular(8),),
                  SizedBox(height: 20,),
                  GraphsContainer(hight: size.height*.12,width: size.width,color1: Colors.deepPurple.withOpacity(.50),color2: Colors.purpleAccent[700],txt: "Offer Name",borderradius: BorderRadius.circular(8),),
                  SizedBox(height: 20,),
                  GraphsContainer(hight: size.height*.12,width: size.width,color1: Colors.deepPurple.withOpacity(.50),color2: Colors.purpleAccent[700],txt: "Offer Name",borderradius: BorderRadius.circular(8),),
                  SizedBox(height: 20,),
                  GraphsContainer(hight: size.height*.12,width: size.width,color1: Colors.deepPurple.withOpacity(.50),color2: Colors.purpleAccent[700],txt: "Offer Name",borderradius: BorderRadius.circular(8),),
                  SizedBox(height: 30,),
                  GraphsContainer(hight: size.height*.12,width: size.width,color1: Colors.deepPurple.withOpacity(.50),color2: Colors.purpleAccent[700],txt: "Offer Name",borderradius: BorderRadius.circular(8),),
                  SizedBox(height: 30,), GraphsContainer(hight: size.height*.12,width: size.width,color1: Colors.deepPurple.withOpacity(.50),color2: Colors.purpleAccent[700],txt: "Offer valiclity",borderradius: BorderRadius.circular(8),),
                  SizedBox(height: 30,),
                  GraphsContainer(hight: size.height*.12,width: size.width,color1: Colors.deepPurple.withOpacity(.50),color2: Colors.purpleAccent[700],txt: "How much discount offered",borderradius: BorderRadius.circular(8),),
                  SizedBox(height: 30,),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: CustomTxt(txt: "Details", clr:Colors.black, size: 16, fnt_wght: FontWeight.bold)),
                  GraphsContainer(hight: size.height*.16,width: size.width,color1: Colors.deepPurple.withOpacity(.50),color2: Colors.purpleAccent[700],txt: "",borderradius: BorderRadius.circular(8),),
                  SizedBox(height: 30,),
                  Btn(txt: "Submit",color1: Colors.deepPurple.withOpacity(.50),color2: Colors.purpleAccent.shade700,hgt: size.height*.050,wdgt: size.width*.40,),


                ],),
              ),
            ),

          ],),
        ),
      ],),


    );
  }
}