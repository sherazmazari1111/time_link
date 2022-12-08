import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
// import 'package:time_link_shehroz/chat_module/view/chat_room.dart';
// import 'package:time_link_shehroz/profile_module/view/profile_view.dart';
// import 'package:time_link_shehroz/utils/custom_appbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:time_link_sheraz_ahmad/Modules/AuthModule/ViewModel/method.dart';
import 'package:time_link_sheraz_ahmad/Modules/ProfileModule/View/profile_page.dart';
import 'package:time_link_sheraz_ahmad/Utils/custom_btn.dart';

import '../../../Utils/custom_appBarr.dart';
import 'chat_screen.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  final TextEditingController _search = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Map<String, dynamic>? userMap;

  String chatRoomId(String user1, String user2) {
    if (user1[0].toLowerCase().codeUnits[0] >
        user2.toLowerCase().codeUnits[0]) {
      return "$user1$user2";
    } else {
      return "$user2$user1";
    }
  }

  void onSearch() async {
    FirebaseFirestore _firestore = FirebaseFirestore.instance;
    await _firestore
        .collection("users")
        .where("email", isEqualTo: _search.text)
        .get()
        .then((value) {
      setState(() {
        userMap = value.docs[0].data();
      });
      print(userMap);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(

        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBarr(hight: size.height*.13,widt: size.width,icon: Icons.arrow_back_ios,icon2: Icons.logout,txt: "Search For User",ontp: (){
                Get.to(ProfilePage());
              },ontap: (){
                logOut(context);
              }),
              SizedBox(
                height: size.height,
                width: size.width,
                child: Padding(
                  padding:  EdgeInsets.only(
                    left: 25,
                    right: 25,
                  ),
                  child: Column(
                    children: [
                       SizedBox(height: 25),
                      SizedBox(
                        height: size.height / 14,
                        width: size.width / 1.2,
                        child: TextFormField(
                          controller: _search,
                          decoration: InputDecoration(
                              hintText: "search",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                       SizedBox(height: 25),
                      // ElevatedButton(
                      //     onPressed: () {
                      //       onSearch();
                      //     },
                      //     child: const Text("Search")),
                      InkWell(
                        onTap: (){
                          onSearch();
                        },
                        child: Btn(txt: "Search",color1: Colors.deepPurple.withOpacity(.50),color2: Colors.purpleAccent.shade700,hgt:size.height*.069,wdgt: size.width,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      userMap != null
                          ? ListTile(
                        onTap: () {
                          String roomId = chatRoomId(
                              _auth.currentUser!.displayName!,
                              userMap!['name']);

                         Get.to(ChatScreen(chatRoomId: roomId,userMap: userMap!,));
                        },
                        leading: const Icon(
                          Icons.account_box,
                          color: Colors.black,
                        ),
                        trailing: const Icon(
                          Icons.chat_bubble,
                          color: Colors.black,
                        ),
                        title: Text(userMap!["name"]),
                        subtitle: Text(userMap!["email"]),
                      )
                          : Container()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
