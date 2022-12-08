import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time_link_sheraz_ahmad/Utils/navigation_bar.dart';
class CustomNavBar extends StatefulWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.only(left: 40,right: 40),
      height: MediaQuery.of(context).size.height*.080,
      width:MediaQuery.of(context).size.width,
      child: Row(children: [

        InkWell(
          onTap: (){
            Get.to(MyHomePage());
          },
          child:Column(children: [
          Icon(Icons.home,color: Colors.grey,size: 40,),SizedBox(height: 3,),Text("Home")],),),
        Spacer(),
      InkWell(child: Column(children: [
        Image.asset("assets/images/order delivery.png",height: 40,),
        SizedBox(height: 3,),
        Text("Completed Orders"),
      ],),),
        Spacer(),
        InkWell(
          onTap: (){
            Get.to(MyHomePage());
          },
          child:Column(children: [
            Icon(Icons.qr_code_2_rounded,color: Colors.grey,size: 40,),SizedBox(height: 3,),Text("Qr Scan")],),),
        Spacer(),
        InkWell(
          onTap: (){
            Get.to(MyHomePage());
          },
          child:Column(children: [
            Icon(Icons.person,color: Colors.grey,size: 40,),SizedBox(height: 3,),Text("Profile")],),),


      ],),
    );
  }
}
