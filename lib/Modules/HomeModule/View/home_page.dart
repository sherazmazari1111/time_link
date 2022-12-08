import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time_link_sheraz_ahmad/Modules/OnboardingModule/view/Components/custom_container.dart';
import 'package:time_link_sheraz_ahmad/Modules/OrdersModule/View/Components/CustTimer.dart';
import 'package:time_link_sheraz_ahmad/Utils/custom_appBarr.dart';
import 'package:time_link_sheraz_ahmad/Utils/custom_txt.dart';
import 'package:time_link_sheraz_ahmad/Utils/my_drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  deletedata(id) async {
    await FirebaseFirestore.instance.collection("orders").doc(id).delete();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(90.0), // here the desired heigh
          child: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(
                color: Colors.purpleAccent.shade700,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
            ),
            title: Padding(
              padding: EdgeInsets.only(top: 37),
              child: Text(
                "Active Orders",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            centerTitle: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            // ...
          )),
      drawer: MyDrawer(),
      body: Padding(
        padding: EdgeInsets.only(top: 40, left: 40, right: 40),
        child: SizedBox(
          child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection('orders')
                  .where("email",
                      isEqualTo: FirebaseAuth.instance.currentUser!.email)
                  .snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasData &&
                    snapshot.connectionState != ConnectionState.waiting) {
                  var data = snapshot.data!.docs;
                  return ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        height: 15,
                      ),
                      itemCount: data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onLongPress: () {
                            Get.to(TimerScreen());
                          },
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          left: 20, right: 20, top: 30),
                                      height: size.height * .25,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          CustomTxt(
                                              txt:
                                              "Are you sure to delete this order",
                                              clr: Colors.black,
                                              size: 19,
                                              fnt_wght: FontWeight.w400),
                                          SizedBox(
                                            height: 50,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Text(
                                                  "Cancel",
                                                  style: TextStyle(
                                                      color: Colors.purpleAccent),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  deletedata(snapshot
                                                      .data?.docs[index].id);
                                                  Navigator.of(context).pop();
                                                },
                                                child: Text(
                                                  "Delete",
                                                  style: TextStyle(
                                                      color: Colors.purpleAccent),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: CustomContForOrders(
                            hight: size.height * .12,
                            width: size.width,
                            color1: Colors.deepPurple.withOpacity(.50),
                            color2: Colors.purpleAccent[700],
                            txt: data[index]['order number'],
                            // text2: data[index]['name'],

                            borderradius: BorderRadius.circular(8),
                            pdng: EdgeInsets.only(left: 40),
                          ),
                        );
                      });
                }else{
                  return Container(

                  );
                }



              }),
        ),
      ),
    );
  }
}
