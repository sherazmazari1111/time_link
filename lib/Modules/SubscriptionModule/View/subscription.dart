import 'package:flutter/material.dart';
import 'package:time_link_sheraz_ahmad/Modules/ProfileModule/View/profile_page.dart';
import 'package:time_link_sheraz_ahmad/Utils/custom_navbar_btns.dart';

import '../../../Utils/custom_appBarr.dart';
import '../../OnboardingModule/view/Components/custom_container.dart';
class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({Key? key}) : super(key: key);

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage> {
  String? currentsubscription;
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;

    return Scaffold(

      body:Stack(children: [
        Container(
          height: size.height,
          width: size.width,
          color: Colors.white,
          child: Column(children: [
            CustomAppBarr(hight: size.height*.15, widt: size.width,icon: Icons.arrow_back_ios,txt: "Garaphics & Statics",ontp: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage(),));},),
            Container(
              padding: EdgeInsets.only(left: 35,right: 35),
              height: size.height*.76,
              width: size.width,
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 50,),
                Image.asset("assets/images/subsp.png"),
                    SizedBox(height: 50,),
                    GraphsContainer(hight: size.height*.12,width: size.width,color1: Colors.deepPurple.withOpacity(.50),color2: Colors.purpleAccent[700],txt: "Current Subscription",borderradius: BorderRadius.circular(10),pdng: EdgeInsets.only(left: 40,),),
                    SizedBox(height: 20,),
                   Row(children: [
                     Radio(value:"Upgrade Subscription" , groupValue: currentsubscription, onChanged:(value){
                       setState(() {
                         currentsubscription=value.toString();
                       });
                     },
                       fillColor: MaterialStateColor.resolveWith((states) => Colors.deepPurple.shade200),
                     ),
                     Text("Upgrade Subscription",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),

                   ],),
                    SizedBox(height: 10,),
                   Row(children: [
                     Radio(value:"Downgrade Subscription" , groupValue: currentsubscription, onChanged:(value){
                       setState(() {
                         currentsubscription=value.toString();
                       });
                     },
                       fillColor: MaterialStateColor.resolveWith((states) => Colors.deepPurple.shade200),
                     ),
                     Text("Downgrade Subscription",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),

                   ],),


                  ],),
              ),
            ),

          ],),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: CustomNavBar()),
      ],),


    );
  }
}
