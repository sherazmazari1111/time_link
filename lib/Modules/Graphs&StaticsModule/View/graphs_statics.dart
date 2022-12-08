import 'package:flutter/material.dart';
import 'package:time_link_sheraz_ahmad/Modules/ProfileModule/View/profile_page.dart';
import 'package:time_link_sheraz_ahmad/Utils/navigation_bar.dart';

import '../../../Utils/custom_appBarr.dart';
import '../../OnboardingModule/view/Components/custom_container.dart';
import '../../OrdersModule/View/Components/CustTimer.dart';
class GraphsAndStatics extends StatefulWidget {
  GraphsAndStatics({Key? key}) : super(key: key);

  @override
  State<GraphsAndStatics> createState() => _GraphsAndStaticsState();
}

class _GraphsAndStaticsState extends State<GraphsAndStatics> {
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
                child: Column(children: [
                  SizedBox(height: 20,),
                  GraphsContainer(hight: size.height*.12,width: size.width,color1: Colors.deepPurple.withOpacity(.50),color2: Colors.purpleAccent[700],txt: "Average order time per \n     day and weekly ",borderradius: BorderRadius.circular(8),pdng: EdgeInsets.only(left: 40,),),
                  SizedBox(height: 20,),
                  GraphsContainer(hight: size.height*.12,width: size.width,color1: Colors.deepPurple.withOpacity(.50),color2: Colors.purpleAccent[700],txt: "Average order completation \n             time per order ",borderradius: BorderRadius.circular(8),pdng: EdgeInsets.only(left: 40,),),
                  SizedBox(height: 20,),
                  GraphsContainer(hight: size.height*.12,width: size.width,color1: Colors.deepPurple.withOpacity(.50),color2: Colors.purpleAccent[700],txt: "Average order time per \n     day and weekly",borderradius: BorderRadius.circular(8),pdng: EdgeInsets.only(left: 40,),),
                  SizedBox(height: 20,),
                  GraphsContainer(hight: size.height*.12,width: size.width,color1: Colors.deepPurple.withOpacity(.50),color2: Colors.purpleAccent[700],txt: "Buistic periods",borderradius: BorderRadius.circular(8),pdng: EdgeInsets.only(left: 40,),),
                  SizedBox(height: 20,),
                  GraphsContainer(hight: size.height*.12,width: size.width,color1: Colors.deepPurple.withOpacity(.50),color2: Colors.purpleAccent[700],txt: "order per day/week",borderradius: BorderRadius.circular(8),pdng: EdgeInsets.only(left: 40,),),
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
