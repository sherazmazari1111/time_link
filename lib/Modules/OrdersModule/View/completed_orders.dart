import 'package:flutter/material.dart';
import 'package:time_link_sheraz_ahmad/Modules/OrdersModule/View/Components/CustTimer.dart';
import 'package:time_link_sheraz_ahmad/Modules/OrdersModule/View/orders_page..dart';

import '../../../Utils/custom_appBarr.dart';
import '../../OnboardingModule/view/Components/custom_container.dart';
class CompletedOrders extends StatefulWidget {
  const CompletedOrders({Key? key}) : super(key: key);

  @override
  State<CompletedOrders> createState() => _CompletedOrdersState();
}

class _CompletedOrdersState extends State<CompletedOrders> {
  @override
  Widget build(BuildContext context) {
    var _currentindex = 0;
    final size= MediaQuery.of(context).size;

    return Scaffold(

      body:Stack(children: [
        Container(
          height: size.height,
          width: size.width,
          color: Colors.white,
          child: Column(children: [
            CustomAppBarr(hight: size.height*.15, widt: size.width,icon: Icons.menu,txt: "Completed Orders",),
            Container(
              padding: EdgeInsets.only(left: 35,right: 35),
              height: size.height*.76,
              width: size.width,
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(children: [
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      // showModalBottomSheet(
                      //
                      //   isScrollControlled: true,
                      //   context: context, builder: (context) {
                      //   return Container(
                      //     child: TimerScreen(),
                      //   );
                      // },);
                    },
                      child: CustomContForOrders(hight: size.height*.12, width: size.width,color1: Colors.deepPurple.withOpacity(.50),color2: Colors.purpleAccent[700],txt: "Orders # 3467",borderradius: BorderRadius.circular(8),pdng: EdgeInsets.only(left: 40,),)),
                  SizedBox(height: 20,),
                  CustomContForOrders(hight: size.height*.12, width: size.width,color1: Colors.deepPurple.withOpacity(.50),color2: Colors.purpleAccent[700],txt: "Orders # 3467",borderradius: BorderRadius.circular(8),pdng: EdgeInsets.only(left: 40,),),
                  SizedBox(height: 20,),
                  CustomContForOrders(hight: size.height*.12, width: size.width,color1: Colors.deepPurple.withOpacity(.50),color2: Colors.purpleAccent[700],txt: "Orders # 3467",borderradius: BorderRadius.circular(8),pdng: EdgeInsets.only(left: 40,),),
                  SizedBox(height: 20,),
                  CustomContForOrders(hight: size.height*.12, width: size.width,color1: Colors.deepPurple.withOpacity(.50),color2: Colors.purpleAccent[700],txt: "Orders # 3467",borderradius: BorderRadius.circular(8),pdng: EdgeInsets.only(left: 40,),),
                  SizedBox(height: 20,),
                  CustomContForOrders(hight: size.height*.12, width: size.width,color1: Colors.deepPurple.withOpacity(.50),color2: Colors.purpleAccent[700],txt: "Orders # 3467",borderradius: BorderRadius.circular(8),pdng: EdgeInsets.only(left: 40,),),
                  SizedBox(height: 30,),

                ],),
              ),
            ),

          ],),
        ),
      ],),


    );
  }
}
