import 'package:flutter/material.dart';
class CustomContainer extends StatelessWidget {
  CustomContainer ({Key? key , required this.hight,required this.width,
    required this.clr,required this.chld,required this.borderradius,required this.pdng}) : super(key: key);
  final hight;
  final width;
  final clr;
  final chld;
  final borderradius;
  final pdng;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: pdng,
      height: hight,
      width:width,
      child: chld,
      decoration: BoxDecoration(
        color: clr,
        borderRadius: borderradius,
      ),
    );
  }
}
class CustomContForOrders extends StatelessWidget {
   CustomContForOrders({Key? key, required this.hight,required this.width,
     this.color1,this.color2,this.txt, this.borderradius, this.pdng,}) : super(key: key);
  final hight;
  final width;
  final color1;
  final color2;
  final txt;
  // final text2;
  final borderradius;
  final pdng;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: pdng,
      height: hight,
      width:width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 5,),
          // Text(text2,style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w500),),
SizedBox(height: 5,),
          Text(txt,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),
        ],
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [color1,color2]),
        borderRadius: borderradius,
      ),
    );
  }
}

class GraphsContainer extends StatelessWidget {
  const GraphsContainer({Key? key ,required this.hight,required this.width,
    this.color1,this.color2,this.txt, this.borderradius, this.pdng}) : super(key: key);
  final hight;
  final width;
  final color1;
  final color2;
  final txt;
  final borderradius;
  final pdng;
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: pdng,
      height: hight,
      width:width,
      child: Align(
          alignment: Alignment.centerLeft,
          child: Center(child: Text(txt,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),))),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [color1,color2]),
        borderRadius: borderradius,
      ),
    );
  }
}
class ContforCustomerDetail extends StatelessWidget {
  ContforCustomerDetail({Key? key,required this.hight,required this.width,
 required this.chld,required this.borderradius,required this.pdng,this.colr1,this.colr2}) : super(key: key);
  final hight;
  final width;
 final colr1;
  final chld;
  final borderradius;
  final pdng;
  final colr2;

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: pdng,
      height: hight,
      width:width,
      child: chld,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [colr1,colr2]),
        borderRadius: borderradius,
      ),
    );
  }
}