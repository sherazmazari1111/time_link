import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:time_link_sheraz_ahmad/Modules/ProfileModule/View/profile_page.dart';

import '../../../Utils/custom_appBarr.dart';
import '../../../Utils/custom_btn.dart';
import '../../../Utils/custom_txt.dart';
import '../../../Utils/navigation_bar.dart';
import '../../AuthModule/View/Components/custom_txtfield.dart';
import '../../AuthModule/View/signup_page.dart';
class ProfileEdit extends StatefulWidget {
  const ProfileEdit({Key? key}) : super(key: key);

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    User? user=FirebaseAuth.instance.currentUser;

    return StreamBuilder<DocumentSnapshot>(
      stream:  FirebaseFirestore.instance.collection('users').doc(user!.uid).snapshots(),
      builder: (context, snapshot) {
        var name =snapshot.data;
        var email=snapshot.data;
        return Scaffold(
          body: SizedBox(

            child: SingleChildScrollView(
              child: Column(children: [
                CustomAppBarr(hight: size.height*.15, widt:size.width,icon:Icons.arrow_back_ios,txt: "Profile",ontp: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage(),));},),

                Container(
                  padding: EdgeInsets.only(left: 20,right: 20,bottom: 30),
                  height: size.height,
                  width: size.width,
                  child: SingleChildScrollView(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 40,),
                        Padding(
                          padding: const EdgeInsets.only(left: 180),
                          child: ClipRRect(child: Image.asset("assets/images/pp.png"),),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 150),
                          child: CustomTxt(txt: name !=null ? name['name']: "",clr: Colors.black, fnt_wght: FontWeight.w400,size: 20),
                        ),

                        SizedBox(height: 30,),
                        CustomTxt(txt: "Business Name", clr:Colors.black , size: 18, fnt_wght: FontWeight.w400),
                        SizedBox(height: 10,),
                        CustomLinearGradientCont(clr1: Colors.deepPurple.withOpacity(.50), clr2:Colors.purpleAccent[700], obs:false ,clor: Colors.white, htxt:"Business Name",),
                        SizedBox(height: 35,),
                        CustomTxt(txt: "User-name/Phone No/Email", clr:Colors.black , size: 18, fnt_wght: FontWeight.w400),
                        SizedBox(height: 10,),
                        CustomLinearGradientCont(clr1: Colors.deepPurple.withOpacity(.50), clr2:Colors.purpleAccent[700], obs:false ,clor: Colors.white, htxt:"Write your name",),
                        SizedBox(height: 35,),
                        CustomTxt(txt: "Business Password", clr:Colors.black , size: 18, fnt_wght: FontWeight.w400),
                        SizedBox(height: 10,),
                        CustomLinearGradientCont(clr1: Colors.deepPurple.withOpacity(.50), clr2:Colors.purpleAccent[700], obs:false ,clor: Colors.white, htxt:"Password",sicon: Icon(Icons.remove_red_eye_outlined,color: Colors.white,),),
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
                        SizedBox(height: 30,),
                        InkWell(
                            onTap: (){

                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Btn(color1: Colors.deepPurple.withOpacity(.50),color2: Colors.purpleAccent[700],txt: "Update",hgt: size.height*.060,wdgt: size.width*.70,),
                            ),),
                     SizedBox(height: 200,),
                      ],),
                  ),
                ),
              ],),
            ),
          ),
        );
      }
    );
  }
}
