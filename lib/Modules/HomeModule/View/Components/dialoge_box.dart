
import 'package:flutter/material.dart';
import 'package:time_link_sheraz_ahmad/Modules/AuthModule/View/Components/custom_txtfield.dart';
import 'package:time_link_sheraz_ahmad/Modules/AuthModule/ViewModel/method.dart';
import 'package:time_link_sheraz_ahmad/Utils/custom_textfiled.dart';

import '../../../../Utils/custom_btn.dart';
import '../../../../Utils/custom_txt.dart';
// import 'package:time_link_shehroz/auth_module/view%20model/authentication_methods.dart';
// import 'package:time_link_shehroz/utils/custom_btn.dart';
// import 'package:time_link_shehroz/utils/custom_textfield.dart';
// import 'package:time_link_shehroz/utils/custom_txt.dart';

class DialogBox extends StatelessWidget {
  DialogBox({Key? key}) : super(key: key);

  final Onumbercontroller = TextEditingController();
  final Onamecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: SingleChildScrollView(
        child: Container(
          height: 323,
          width: 323,
          decoration: BoxDecoration(
              color:  Color(0xffF5FAFF),
              borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding:  EdgeInsets.only(left: 23, right: 24, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10,),
                CustomTxt(
                    txt: "Please Enter The \n  Order Number",
                    clr: Colors.black,
                    size: 20,
                    fnt_wght: FontWeight.bold),
                SizedBox(height: 10,),

                // CustomLinearGradientCont(Controller: Onumbercontroller,clr1: Colors.deepPurple.withOpacity(.50), clr2: Colors.purpleAccent.shade700, obs: false,htxt: "#123456"),
OrderField(clr1: Colors.deepPurple.withOpacity(.50), clr2: Colors.purpleAccent.shade700, obs:false,Controller: Onumbercontroller,htxt: "Order Number",),
                // CustomTextField(
                //   Controller: ordernumbercontroller,
                //   color1: const Color(0xffC59DF4),
                //   color2: const Color(0xffA150FF),
                //   obsecure: false,
                //   hinttext: "Order number",
                // ),
                SizedBox(height: 28),

                OrderField(clr1: Colors.deepPurple.withOpacity(.50), clr2: Colors.purpleAccent.shade700, obs:false,Controller:Onamecontroller,htxt: "Add fun facts",),

                SizedBox(height:30),
                Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: (){
                      order(ordername: Onamecontroller,
                      ordernumber: Onumbercontroller,
                      );
                      Navigator.of(context).pop();
                    },
                    child: Btn(
                      hgt: 37.0,
                      wdgt: 143.0,
                      txt: "Submit",
                      color1: Color(0xffC59DF4),
                      color2: Color(0xffA150FF),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
