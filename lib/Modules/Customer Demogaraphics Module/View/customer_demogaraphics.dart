import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time_link_sheraz_ahmad/Modules/OnboardingModule/view/Components/custom_container.dart';
import 'package:time_link_sheraz_ahmad/Modules/ProfileModule/View/profile_page.dart';
import 'package:time_link_sheraz_ahmad/Utils/custom_textfiled.dart';
import 'package:time_link_sheraz_ahmad/Utils/custom_txt.dart';

import '../../../Utils/custom_appBarr.dart';
class CustomerDemogaraphics extends StatefulWidget {
  const CustomerDemogaraphics({Key? key}) : super(key: key);

  @override
  State<CustomerDemogaraphics> createState() => _CustomerDemogaraphicsState();
}

class _CustomerDemogaraphicsState extends State<CustomerDemogaraphics> {
  String? currentsubscription;

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          CustomAppBarr(hight: size.height*.15, widt: size.width,icon: Icons.arrow_back_ios,txt: "Customer Demogaraphics",ontp: (){
           Get.to(ProfilePage());
          },),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Spacer(),
              Radio(value:"Age Group" , groupValue: currentsubscription, onChanged:(value){
            setState(() {
              currentsubscription=value.toString();
            });
          },
                fillColor: MaterialStateColor.resolveWith((states) => Colors.deepPurple.shade200),
          ),

            Text("Age Group",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
            Spacer(),
            Radio(value:"Age Group" , groupValue: currentsubscription, onChanged:(value){
              setState(() {
                currentsubscription=value.toString();
              });
            },
              fillColor: MaterialStateColor.resolveWith((states) => Colors.deepPurple.shade200),
            ),
              Text("Gender",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
            Spacer(),

          ],),
SizedBox(height: 350,),
Align(
  alignment: Alignment.bottomCenter,
  child:   ContforCustomerDetail(hight: size.height*.40, width: size.width, chld: Column(children: [

  CustomTxt(txt: "List of Customers", clr:Colors.white, size:20, fnt_wght: FontWeight.bold),
SizedBox(height: 20,),
Row(children: [

  Expanded(child:     CustomTxt(txt: "Name", clr: Colors.white, size: 20, fnt_wght: FontWeight.w500),
  ),
  Spacer(),
  Expanded(child:     CustomTxt(txt: "Total Visit List", clr: Colors.white, size: 20, fnt_wght: FontWeight.w500),
  ),
],),
    SizedBox(height: 15,),
    Row(
      children: [
        Expanded(child: CustomTextFieldForCustomers(),),
        Spacer(),
        Expanded(child: CustomTextFieldForCustomers(),),
      ],
    ),
    SizedBox(height: 15,),
    Row(
      children: [
        Expanded(child: CustomTextFieldForCustomers(),),
        Spacer(),
        Expanded(child: CustomTextFieldForCustomers(),),
      ],
    ),
    SizedBox(height: 15,),
    Row(
      children: [
        Expanded(child: CustomTextFieldForCustomers(),),
        Spacer(),
        Expanded(child: CustomTextFieldForCustomers(),),
      ],
    ),
    SizedBox(height: 15,),


  ],),

    borderradius: BorderRadius.only(topRight: Radius.circular(8),topLeft: Radius.circular(8)), pdng:EdgeInsets.only(left: 30,right: 30,top: 20),colr1: Colors.deepPurple.withOpacity(.50),colr2: Colors.purpleAccent.shade700,),
),
        ],),
      ),
    );
  }
}
