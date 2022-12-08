import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time_link_sheraz_ahmad/Modules/ProfileModule/View/profile_page.dart';
import 'package:time_link_sheraz_ahmad/Utils/custom_appBarr.dart';
class BusinessAroundYou extends StatefulWidget {
  const BusinessAroundYou({Key? key}) : super(key: key);

  @override
  State<BusinessAroundYou> createState() => _BusinessAroundYouState();
}

class _BusinessAroundYouState extends State<BusinessAroundYou> {
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;

    return Scaffold(
      body: Column(children: [
        CustomAppBarr(hight:size.height*.13 , widt:size.width,icon: Icons.arrow_back_ios,txt: "Business Around You",ontp: (){{
          Get.to(ProfilePage());


        }
    },),
        Image.asset("assets/images/map.png",fit: BoxFit.fitWidth,),
      ],),
    );
  }
}
