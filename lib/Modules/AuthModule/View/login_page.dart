import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:time_link_sheraz_ahmad/Modules/AuthModule/View/Components/custom_txtfield.dart';
import 'package:time_link_sheraz_ahmad/Modules/AuthModule/View/signup_page.dart';
import 'package:time_link_sheraz_ahmad/Utils/custom_btn.dart';
import 'package:time_link_sheraz_ahmad/Utils/navigation_bar.dart';
import '../../../Utils/custom_txt.dart';
import '../../HomeModule/View/home_page.dart';
import '../ViewModel/auth_user_VM.dart';
import '../ViewModel/method.dart';
// import '../Services/email_services.dart';
class LoginView extends StatefulWidget {
  LoginView({Key? key}) : super(key: key);
// final AuthVM authVM=AuthVM();
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _email= TextEditingController();
  final _password= TextEditingController();



  // get firestoreService => null;
  final AuthVM _authVM = AuthVM();
  @override
  final _auth=FirebaseAuth.instance;



  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    final AuthVM authVM = AuthVM();
    bool isLoading=false;
    return Scaffold(

      body: Container(
        padding: EdgeInsets.only(top: 50,left: 20,right: 20,bottom: 20),
        height: size.height,
        width: size.width,
        color: Colors.white.withOpacity(1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset("assets/images/loginpic.png")),
            SizedBox(height: 30,),
          Center(
            child: CustomTxt(txt: "Welcome to timelink", clr:Colors.blue.withOpacity(.7), size: 28,
                fnt_wght:FontWeight.bold),
          ),
SizedBox(height: 10,),
CustomTxt(txt: "Email Address", clr:Colors.black , size: 14, fnt_wght: FontWeight.w400,),
SizedBox(height: 10,),
CustomLinearGradientCont( Controller: _email,clr1: Colors.deepPurple.withOpacity(.50), clr2:Colors.purpleAccent[700], obs:false ,clor: Colors.white,onchange: (Value) async{

},  ),

            SizedBox(height: 34,),
            CustomTxt(txt: "Password", clr:Colors.black , size: 14, fnt_wght: FontWeight.w400),
            SizedBox(height: 10,),
            CustomLinearGradientCont(  Controller: _password,clr1: Colors.deepPurple.withOpacity(.50), clr2:Colors.purpleAccent[700], obs:true ,clor: Colors.white,sicon: Icon(Icons.remove_red_eye_outlined,color: Colors.white,), onchange: (Value) async{

            },),
SizedBox(height: 10,),
Align(
    alignment: Alignment.topRight,
    child: CustomTxt(txt: "Forget Password?", clr:Colors.black, size: 14, fnt_wght: FontWeight.w600)),
SizedBox(height: 25,),
            InkWell(
              onTap: (){
                if (_email.text.isNotEmpty && _password.text.isNotEmpty) {
                  setState(() {
                    isLoading = true;
                  });

                  logIn(_email.text, _password.text).then((user) {
                    if (user != null) {
                      print("Login Sucessfull");
                      setState(() {
                        isLoading = false;
                      });
                     Get.offAll(MyHomePage());
                    } else {
                      print("Login Failed");
                      setState(() {
                        isLoading = false;
                      });
                    }
                  });
                } else {
                  print("Please fill form correctly");
                }


              },
                child: Btn(color1: Colors.deepPurple.withOpacity(.50),color2: Colors.purpleAccent[700],txt: "Login",hgt: size.height*.060,wdgt: size.width,)),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              CustomTxt(txt: "Don't have an account?", clr: Colors.black, size:14, fnt_wght:FontWeight.w500),
              InkWell(
                  onTap: (){
                    Get.to(SignUpPage());
                  },
                  child: CustomTxt(txt: "Sign Up", clr: Colors.black, size:16, fnt_wght:FontWeight.bold)),

            ],),
          ],
        ),
      ),
    );
  }
}
