import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time_link_sheraz_ahmad/Modules/HomeModule/View/home_page.dart';
import 'package:time_link_sheraz_ahmad/Utils/custom_appBarr.dart';
import 'package:time_link_sheraz_ahmad/Utils/custom_txt.dart';

import '../../OnboardingModule/view/Components/custom_container.dart';
// import 'package:time_link_sheraz_ahmad/Utils/custom_txt.dart
//
// import '../../OnboardingModule/view/Components/custom_container.dart';';
class AddDevice extends StatefulWidget {
  const AddDevice({Key? key}) : super(key: key);

  @override
  State<AddDevice> createState() => _AddDeviceState();
}

class _AddDeviceState extends State<AddDevice> {
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;

    return  Scaffold(

      body:Stack(children: [
        Container(
          height: size.height,
          width: size.width,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

            CustomAppBarr(hight: size.height*.15, widt: size.width,icon: Icons.arrow_back_ios,txt: "Add Device",ontp: (){
             Get.to(HomePage());
            },),
            Container(
              padding: EdgeInsets.only(left: 50,right: 50),

              height: size.height*.76,
              width: size.width,
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                  SizedBox(height: 80,),
CustomTxt(txt: "Scan the QR code o the device", clr: Colors.black, size: 22, fnt_wght:FontWeight.w400),
                    SizedBox(height: 50,),
                    Image.asset("assets/images/qrcode1.png"),
                    SizedBox(height: 50,),
                    CustomTxt(txt: "The QR code will be automatically detected \nwhen you posioned between thw guide lines", clr: Colors.black, size: 17, fnt_wght:FontWeight.w400),

                  ],),
              ),
            ),

          ],),
        ),
      ],),


    );
  }
}
