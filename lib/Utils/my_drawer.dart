// import 'dart:html';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:time_link_sheraz_ahmad/Modules/AddPromotionModule/View/add_promotion.dart';
import 'package:time_link_sheraz_ahmad/Modules/AuthModule/View/login_page.dart';
import 'package:time_link_sheraz_ahmad/Modules/HomeModule/View/home_page.dart';
import 'package:time_link_sheraz_ahmad/Modules/OrdersModule/View/add_device.dart';
import 'package:time_link_sheraz_ahmad/Modules/ProfileModule/View/profile_page.dart';
import 'package:time_link_sheraz_ahmad/Modules/SubscriptionModule/View/subscription.dart';
import 'package:time_link_sheraz_ahmad/Utils/custom_btn.dart';
import 'package:time_link_sheraz_ahmad/Utils/custom_txt.dart';

import '../Modules/AuthModule/ViewModel/method.dart';
class MyDrawer extends StatefulWidget {
  MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  late SharedPreferences logindata;
  late String username;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }
  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username')!;
    });
  }
  // File? _image;
// Future getImage() async {
//   // final image= await ImagePicker().pickImage(source: ImageSource.gallery);
// }
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
User? user=FirebaseAuth.instance.currentUser;
    return StreamBuilder<DocumentSnapshot>(
      stream: FirebaseFirestore.instance.collection('users').doc(user!.uid).snapshots(),
      builder: (context, snapshot) {
        var name=snapshot.data;
        var email=snapshot.data;
        return Drawer(

          // backgroundColor: Color(0xffC59DF4),
          child: Column(children: [
            UserAccountsDrawerHeader(accountName: CustomTxt(txt: name !=null ? name['name']: "",clr: Colors.white, fnt_wght: FontWeight.normal,size: 16,), accountEmail:CustomTxt(txt: email !=null ? email['email']: "",clr: Colors.white, fnt_wght: FontWeight.normal,size: 16,),
            currentAccountPicture: CircleAvatar(
              child: InkWell(
                  onTap: (){
                    // getImage();
                  },
                  child: Image.asset("assets/images/pushputtichai.png")),

            ),
onDetailsPressed: (){},
            ),
InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>  HomePage()),

          );
        },
        child: ListTile(leading: Image.asset("assets/images/order delivery.png",color: Colors.black,),title: Text("Active Orders",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400),),)),
            Divider(height: 20,thickness:2,color: Colors.black,),
            InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  SubscriptionPage()),

                  );
                },
                child: ListTile(leading: Image.asset("assets/images/subs.png",color: Colors.black,),title: Text("Subscription",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400),),)),
            Divider(height: 20,thickness:2,color: Colors.black,),
            InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  AddDevice()),

                  );
                },
                child: ListTile(leading: Image.asset("assets/images/qr code.png",color: Colors.black,),title: Text("Scan QR",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400),),)),
            Divider(height: 20,thickness:2,color: Colors.black,),
            InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  ProfilePage()),

                  );
                },
                child: ListTile(leading: Image.asset("assets/images/picon.png",color: Colors.black,),title: Text("Profile",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400),),)),
            Divider(height: 20,thickness:2,color: Colors.black,),
            InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  AddPromotion()),

                  );
                },
                child: ListTile(leading: Image.asset("assets/images/adpro.png",color: Colors.black,),title: Text("Add promotion",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400),),)),
            Divider(height: 20,thickness:2,color: Colors.black,),
            SizedBox(height: 30,),
InkWell(
        onTap: (){
          logOut(context);

        },

        child: Btn(txt: "Logout",color1: Colors.purple.withOpacity(.50),color2: Colors.purpleAccent.shade700,hgt: size.height*.050,wdgt: size.width*.40,)),
          ],),
        );
      }
    );
  }
}
