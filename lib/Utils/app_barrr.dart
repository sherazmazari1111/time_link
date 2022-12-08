import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time_link_sheraz_ahmad/Modules/ChatModule/View/inbox_page.dart';
class AppBarr extends StatelessWidget {
   AppBarr({Key? key,this.icon1 , required this.text2, required this.text1,this.img}) : super(key: key);
String text1;
String text2;
final icon1;
final img;
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.deepPurple.withOpacity(.50),Colors.purpleAccent.shade700],),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
      ),
      padding: EdgeInsets.only(left: 20,top: 20,bottom: 20,right: 20),
      height: size.height*.12,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

        Row(children: [
          InkWell(
              onTap: (){
                Get.to(InboxPage());
              },
              child: Icon(icon1,color: Colors.white,),),
          Spacer(),
          Spacer(),
          // CircleAvatar(backgroundImage: AssetImage(img)),
          SizedBox(width: 20,),
          Column(children: [
            Text(text1,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 17,),),
            SizedBox(height: 10,),
            Text(text2,style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.normal),),
          ],),
Spacer(),
          Spacer(),
          Spacer(),
        ],),
      ],),
    );
  }
}
