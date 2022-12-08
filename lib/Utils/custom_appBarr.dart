import 'package:flutter/material.dart';
class CustomAppBarr extends StatelessWidget {
   CustomAppBarr({Key? key, required this.hight,required this.widt,this.chld,
     this.txt,this.icon,this.ontp,this.icon2,this.ontap}) : super(key: key);
final chld;
final hight;
final widt;
final txt;
final icon;
final icon2;
final ontp;
final ontap;
  @override
  Widget build(BuildContext context) {
    return  Container(

      padding: EdgeInsets.only(bottom: 10,left: 15,right: 15),
      height:hight,
      width: widt,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.deepPurple.withOpacity(.50),Colors.purpleAccent.shade700,]),
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(25),bottomLeft: Radius.circular(25),),

      ),
      child: Row(children: [

       Align(
           alignment: Alignment.bottomLeft,
           child: InkWell(
               onTap: ontp,
               child: Icon(icon,color: Colors.white,))),
        Spacer(),
        Spacer(),
        Align(
            alignment: Alignment.bottomCenter,
            child: Text(txt,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30,),)),
        Spacer(),Spacer(),
        Align(
            alignment: Alignment.bottomRight,
            child: InkWell(
                onTap: ontap,
                child: Icon(icon2,color: Colors.white,))),

      ],),
    );
  }
}
