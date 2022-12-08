import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_textfield/gradient_textfield.dart';

class CustomLinearGradientCont extends StatelessWidget {
 CustomLinearGradientCont({Key? key ,
   required this.clr1,
   required this.clr2,
this.Controller,
   this.clor,
   required this.obs,
   this.lbltxt,
   this.sicon,
   this.picon,
   this.htxt,this.ontap,this.onchange,this.vldtr}) : super(key: key);
final clr1;
final clr2;
final Controller;
final obs;
final htxt;
final lbltxt;
final picon;
final sicon;
final clor;
final ontap;
final onchange;
final vldtr;


  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    String emial='', password='';
    return Container(
      padding: EdgeInsets.only(left: 20,right: 20),
      height: size.height*.060,
      width: size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [clr1,clr2]),
          borderRadius: BorderRadius.circular(30),
      ),
      child: TextFormField(

        onTap:ontap ,
onChanged: onchange,
style: TextStyle(color:clor ),
        controller: Controller,
        obscureText:obs ,
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
hintStyle: TextStyle(color: Colors.white),
          hintText: htxt,
          labelText: lbltxt,
          prefixIcon:picon ,
          suffixIcon: sicon,

        ),
        validator: vldtr,
      ),

    );
  }
}


class OrderField extends StatelessWidget {
 OrderField({Key? key,  required this.clr1,
    required this.clr2,
    this.Controller,
    this.clor,
    required this.obs,
    this.lbltxt,
    this.sicon,
    this.picon,
    this.htxt,this.ontap,this.onchange,this.vldtr}) : super(key: key);
  final clr1;
  final clr2;
  final Controller;
  final obs;
  final htxt;
  final lbltxt;
  final picon;
  final sicon;
  final clor;
  final ontap;
  final onchange;
  final vldtr;
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    String emial='', password='';
    return Container(
      padding: EdgeInsets.only(left: 90,),
      height: size.height*.060,
      width: size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [clr1,clr2]),
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextFormField(

        onTap:ontap ,
        onChanged: onchange,
        style: TextStyle(color:clor ),
        controller: Controller,
        obscureText:obs ,
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          hintStyle: TextStyle(color: Colors.white),
          hintText: htxt,
          labelText: lbltxt,
          prefixIcon:picon ,
          suffixIcon: sicon,

        ),
        validator: vldtr,
      ),

    );
  }
}