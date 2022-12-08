import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time_link_sheraz_ahmad/Modules/BusinessAroundYouModule/View/business_around_you.dart';
import 'package:time_link_sheraz_ahmad/Modules/Customer%20Demogaraphics%20Module/View/customer_demogaraphics.dart';
import 'package:time_link_sheraz_ahmad/Modules/ProfileModule/View/profile_edit.dart';
import 'package:time_link_sheraz_ahmad/Utils/navigation_bar.dart';
import '../../../Utils/custom_appBarr.dart';
import '../../../Utils/custom_txt.dart';
import '../../ChatModule/View/inbox_page.dart';
import '../../Graphs&StaticsModule/View/graphs_statics.dart';
import '../../SubscriptionModule/View/subscription.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    User? user=FirebaseAuth.instance.currentUser;

    return StreamBuilder<DocumentSnapshot>(
      stream:   FirebaseFirestore.instance.collection('users').doc(user!.uid).snapshots(),
      builder: (context, snapshot) {
        var name =snapshot.data;
        var email=snapshot.data;
        return Scaffold(

          body:Stack(children: [
            Container(
              height: size.height,
              width: size.width,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  CustomAppBarr(hight: size.height*.15, widt: size.width,icon: Icons.arrow_back_ios,txt: "Profile",ontp: (){
                   Get.to(MyHomePage());
                  },),
                  Container(
                    padding: EdgeInsets.only(left: 40,right: 40),

                    height: size.height*.76,
                    width: size.width,
                    color: Colors.white,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 20,),
Row(children: [
  ClipRRect(child: Image.asset("assets/images/pp.png"),),

Column(children: [
  CustomTxt(txt:name !=null ? name['name']: "",clr: Colors.black, fnt_wght: FontWeight.bold,size: 16),
  SizedBox(height: 10,),
  CustomTxt(txt: "      Don't tell anyone but i'm obito \n      uchila", clr: Colors.black, size: 14, fnt_wght:FontWeight.normal),


],),
],),
                          SizedBox(height: 30,),
                          InkWell(
                            onTap: (){
                              Get.to(ProfileEdit());
                            },
                            child: Row(children: [
Image.asset("assets/images/picon.png"),
                              SizedBox(width: 15,),
                              CustomTxt(txt: "Profile", clr: Colors.black, size: 22, fnt_wght:FontWeight.w400),

                            ],),
                          ),
                      SizedBox(height: 15,),
                      Divider(),
                          SizedBox(height: 15,),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SubscriptionPage(),));
                            },
                            child: Row(children: [
                              Image.asset("assets/images/subs.png"),
                              SizedBox(width: 15,),
                              CustomTxt(txt: "Subscriptions", clr: Colors.black, size: 22, fnt_wght:FontWeight.w400),

                            ],),
                          ),
                          SizedBox(height: 15,),
                          Divider(),
                          SizedBox(height: 15,),
                          InkWell(
                            onTap: (){
                           Get.to(InboxPage());
                            },
                            child: Row(children: [
                              Image.asset("assets/images/msg.png"),
                              SizedBox(width: 15,),
                              CustomTxt(txt: "Support Chat", clr: Colors.black, size: 22, fnt_wght:FontWeight.w400),

                            ],),
                          ),
                          SizedBox(height: 15,),
                          Divider(),
                          SizedBox(height: 15,),
                          InkWell(
                            onTap: (){Get.to(GraphsAndStatics());},
                            child: Row(children: [
                              Image.asset("assets/images/diagram 1.png"),
                              SizedBox(width: 15,),
                              CustomTxt(txt: "Graphs & Statics", clr: Colors.black, size: 22, fnt_wght:FontWeight.w400),

                            ],),
                          ),
                          SizedBox(height: 15,),
                          Divider(),
                          SizedBox(height: 15,),
                          InkWell(
                            onTap: (){
                             Get.to(BusinessAroundYou());
                            },
                            child: Row(children: [
                              Image.asset("assets/images/business.png"),
                              SizedBox(width: 15,),
                              CustomTxt(txt: "Business around you", clr: Colors.black, size: 22, fnt_wght:FontWeight.w400),

                            ],),
                          ),
                          SizedBox(height: 15,),
                          Divider(),
                          SizedBox(height: 15,),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CustomerDemogaraphics()),

                              );
                            },
                            child: Row(children: [
                              Image.asset("assets/images/customer.png"),
                              SizedBox(width: 15,),
                              CustomTxt(txt: "Customer demogaraphics", clr: Colors.black, size: 22, fnt_wght:FontWeight.w400),

                            ],),
                          ),
                          SizedBox(height: 15,),
                          Divider(),
                          SizedBox(height: 15,),
                          Row(children: [
                            Image.asset("assets/images/help.png"),
                            SizedBox(width: 15,),
                            CustomTxt(txt: "Help", clr: Colors.black, size: 22, fnt_wght:FontWeight.w400),

                          ],),
                          SizedBox(height: 15,),
                          Divider(),

                        ],),
                    ),
                  ),

                ],),
            ),
          ],),


        );
      }
    );
  }
}
