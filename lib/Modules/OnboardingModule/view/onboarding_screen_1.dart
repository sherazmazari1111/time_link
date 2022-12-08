import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:time_link_sheraz_ahmad/Modules/OnboardingModule/view/onboarding_screen2.dart';
import 'package:time_link_sheraz_ahmad/Utils/custom_btn.dart';
import 'package:time_link_sheraz_ahmad/Utils/custom_txt.dart';
class OnboardingScreen1 extends StatefulWidget {
  const OnboardingScreen1({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen1> createState() => _OnboardingScreen1State();
}

class _OnboardingScreen1State extends State<OnboardingScreen1> {
  @override
  Widget build(BuildContext context) {
final size= MediaQuery.of(context).size;

    return Scaffold(
      body: Column(

        children: [
          Stack(
            children: [ Image.asset("assets/images/bluepic.png",fit: BoxFit.fill,height: size.height*.68,width:size.width,),
              Padding(
                padding: const EdgeInsets.only(top: 68,left:90,),
                child: Image.asset("assets/images/splash.png"),

              ),

              Positioned(
                  bottom: 140,
                  child: Image.asset("assets/images/Frame.png")),],
          ),
SizedBox(height: 20,),

Center(child: CustomTxt(txt: "Hey, time saver", clr:Colors.blue.withOpacity(.7), size: 28,
    fnt_wght:FontWeight.bold)),
          SizedBox(height: 6,),
          CustomTxt(txt: "Welcome to time link", clr:Colors.black, size: 14, fnt_wght:FontWeight.normal),
          SizedBox(height: 20,),
          // Image.asset("assets/images/btn.png"),
          InkWell(
              onTap: (){
                Get.offAll(OnboardingScreen2());
              },
              child: Image.asset("assets/images/btn.png")),
      ],),
    );
  }
}