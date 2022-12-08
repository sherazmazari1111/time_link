import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time_link_sheraz_ahmad/Modules/AuthModule/View/login_page.dart';
import 'package:time_link_sheraz_ahmad/Modules/OnboardingModule/view/Components/custom_container.dart';

import '../../../Utils/custom_txt.dart';
class OnboardingScreen2 extends StatefulWidget {
  const OnboardingScreen2({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen2> createState() => _OnboardingScreen2State();
}

class _OnboardingScreen2State extends State<OnboardingScreen2> {
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;

    return Scaffold(
      body: Column(

        children: [
          Stack(
            children: [
              Image.asset("assets/images/bluepic.png",fit: BoxFit.fill,height: size.height*.68,width:size.width,),
              Positioned(
                top: 90,
                right: 40,
                child:CustomContainer(
                  pdng: EdgeInsets.only(top:0),
                  hight: size.height*.11,
                  width:size.width*.21,
                  clr: Colors.white.withOpacity(0.5),
                  chld: Image.asset("assets/images/frame2.png"),
                  borderradius: BorderRadius.circular(50),),
              ),
              Positioned(
                top: 183,
                left: 40,
                child: CustomContainer(
                  pdng: EdgeInsets.only(top: 5,left: 20),
                  hight: size.height*.070,
                  width:size.width*.45,
                  clr: Colors.white.withOpacity(0.5),
                  chld: CustomTxt(txt: "Do you ever wish you had more time?",
                      clr:Colors.black, size: 20, fnt_wght:FontWeight.w400),
                  borderradius: BorderRadius.circular(5),),
              ),
              Positioned(
                top: 303,
                left: 40,
                child: CustomContainer(
                  pdng: EdgeInsets.only(top: 0,),
                  hight: size.height*.11,
                  width:size.width*.21,
                  clr: Colors.white.withOpacity(0.5),
                  chld: Image.asset("assets/images/frame3.png"),
                  borderradius: BorderRadius.circular(50),),
              ),
              Positioned(
                top: 392,
                right: 40,
                child: CustomContainer(
                  pdng: EdgeInsets.only(top: 5,left: 20),
                  hight: size.height*.070,
                  width:size.width*.45,
                  clr: Colors.white.withOpacity(0.5),
                  chld: CustomTxt(txt: "What if we have a solution for you?",
                      clr:Colors.black, size: 20, fnt_wght:FontWeight.w400),
                  borderradius: BorderRadius.circular(5),),
              ),
            ],
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
               Get.offAll(LoginView());
              },
              child: Image.asset("assets/images/continuebtn.png")),
        ],),
    );
  }
}
