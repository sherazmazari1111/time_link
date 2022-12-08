import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:time_link_sheraz_ahmad/Modules/AuthModule/View/login_page.dart';
import 'package:time_link_sheraz_ahmad/Modules/HomeModule/View/home_page.dart';
import 'package:time_link_sheraz_ahmad/Utils/custom_appBarr.dart';
import 'package:time_link_sheraz_ahmad/Utils/custom_btn.dart';
import 'package:time_link_sheraz_ahmad/Utils/navigation_bar.dart';

import '../../../Utils/custom_txt.dart';
import '../ViewModel/method.dart';
import 'Components/custom_txtfield.dart';
class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _name= TextEditingController();
  final _email= TextEditingController();
  final _password= TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    bool isLoading=false;
    return Scaffold(
     body: SizedBox(

       child: SingleChildScrollView(
         child: Column(children: [
           CustomAppBarr(hight: size.height*.15, widt:size.width,icon:Icons.menu,txt: "Sign Up",),

           Container(
             padding: EdgeInsets.only(left: 20,right: 20,bottom: 30),
             height: size.height,
             width: size.width,
             child: SingleChildScrollView(
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   // CustomAppBarr(hight: size.height*.15, widt:size.width,txt: "Sign Up",),
                   SizedBox(height: 15,),
                   CustomTxt(txt: "Business Name", clr:Colors.black , size: 18, fnt_wght: FontWeight.w400),
                   SizedBox(height: 10,),
                   CustomLinearGradientCont( Controller: _name,clr1: Colors.deepPurple.withOpacity(.50), clr2:Colors.purpleAccent[700], obs:false ,clor: Colors.white, htxt:"Business Name",),
                   SizedBox(height: 35,),
                   CustomTxt(txt: "User-name/Phone No/Email", clr:Colors.black , size: 18, fnt_wght: FontWeight.w400),
                   SizedBox(height: 10,),
                   CustomLinearGradientCont( Controller: _email,clr1: Colors.deepPurple.withOpacity(.50), clr2:Colors.purpleAccent[700], obs:false ,clor: Colors.white, htxt:"Write your name",),
                   SizedBox(height: 35,),
                   CustomTxt(txt: "Business Password", clr:Colors.black , size: 18, fnt_wght: FontWeight.w400),
                   SizedBox(height: 10,),
                   CustomLinearGradientCont(  Controller: _password,clr1: Colors.deepPurple.withOpacity(.50), clr2:Colors.purpleAccent[700], obs:false ,clor: Colors.white, htxt:"Password",sicon: Icon(Icons.remove_red_eye_outlined,color: Colors.white,),),
                   SizedBox(height: 35,),
                   CustomTxt(txt: "Business Password", clr:Colors.black , size: 18, fnt_wght: FontWeight.w400),
                   SizedBox(height: 10,),
                   CustomLinearGradientCont(clr1: Colors.deepPurple.withOpacity(.50), clr2:Colors.purpleAccent[700], obs:false ,clor: Colors.white, htxt:"Conform Password",sicon: Icon(Icons.remove_red_eye_outlined,color: Colors.white,),),
                   SizedBox(height: 35,),
                   CustomTxt(txt: "Business Phone Number", clr:Colors.black , size: 18, fnt_wght: FontWeight.w400),
                   SizedBox(height: 10,),
                   CustomLinearGradientCont(clr1: Colors.deepPurple.withOpacity(.50), clr2:Colors.purpleAccent[700], obs:false ,clor: Colors.white, htxt:"Write your number",),
                   SizedBox(height: 35,),
                   CustomTxt(txt: "Personal Phone Npumber", clr:Colors.black , size: 18, fnt_wght: FontWeight.w400),
                   SizedBox(height: 10,),
                   CustomLinearGradientCont(clr1: Colors.deepPurple.withOpacity(.50), clr2:Colors.purpleAccent[700], obs:false ,clor: Colors.white, htxt:"Write your number",),
                   SizedBox(height: 35,),
                   CustomTxt(txt: "Business Email Address", clr:Colors.black , size: 18, fnt_wght: FontWeight.w400),
                   SizedBox(height: 10,),
                   CustomLinearGradientCont(clr1: Colors.deepPurple.withOpacity(.50), clr2:Colors.purpleAccent[700], obs:false ,clor: Colors.white, htxt:"Write your email",),
                   SizedBox(height: 35,),
                   CustomTxt(txt: "ABN or ACN", clr:Colors.black , size: 18, fnt_wght: FontWeight.w400),
                   SizedBox(height: 10,),
                   CustomLinearGradientCont(clr1: Colors.deepPurple.withOpacity(.50), clr2:Colors.purpleAccent[700], obs:false ,clor: Colors.white, htxt:"Write your ABN/ACN",),
                   SizedBox(height: 60,),
                   InkWell(
                       onTap: (){
                         if (_name.text.isNotEmpty &&
                             _email.text.isNotEmpty &&
                             _password.text.isNotEmpty) {
                           setState(() {
                             isLoading = true;
                           });

                           createAccount(_name.text, _email.text, _password.text).then((user) {
                             if (user != null) {
                               setState(() {
                                 isLoading = false;
                               });
                               Get.offAll(LoginView());

                               print("Account Created Sucessfull");
                             } else {
                               print("Login Failed");
                               setState(() {
                                 isLoading = false;
                               });
                             }
                           });
                         } else {
                           print("Please enter Fields");
                         }
                       },
                       child: Btn(color1: Colors.deepPurple.withOpacity(.50),color2: Colors.purpleAccent[700],txt: "Sign Up",hgt: size.height*.060,wdgt: size.width,)),
                   SizedBox(height: 50,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       CustomTxt(txt: "Don't have an account?", clr: Colors.black, size:14, fnt_wght:FontWeight.w500),
                       InkWell(
                           onTap: (){
                             Navigator.push(
                               context,
                               MaterialPageRoute(
                                   builder: (context) =>  const SignUpPage()),

                             );
                           },
                           child: CustomTxt(txt: "Sign Up", clr: Colors.black, size:16, fnt_wght:FontWeight.bold)),

                     ],),

SizedBox(height: 100,),
                 ],),
             ),
           ),
         ],),
       ),
     ),
    );
  }
}
