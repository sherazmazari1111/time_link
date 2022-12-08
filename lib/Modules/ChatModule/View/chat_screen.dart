import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:time_link_sheraz_ahmad/Utils/app_barrr.dart';
import 'package:time_link_sheraz_ahmad/Utils/custom_appBarr.dart';
//
class ChatScreen extends StatelessWidget {
  ChatScreen({Key? key, this.userMap, this.chatRoomId}) : super(key: key);
  final TextEditingController _message = TextEditingController();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final Map<String, dynamic>? userMap;
  final String? chatRoomId;
//
  void onSendMessage() async {
    if (_message.text.isNotEmpty) {
      Map<String, dynamic> messages = {
        "sendby": _auth.currentUser!.displayName,
        "message": _message.text,
        //"type": "text",
        "time": FieldValue.serverTimestamp(),
      };
//
      _message.clear();
      await _firestore
          .collection('chatroom')
          .doc(chatRoomId)
          .collection('chats')
          .add(messages);
    } else {
      print("Enter Some Text");
    }
  }
//
//title: Text(userMap!['name']),
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
AppBarr(icon1: Icons.arrow_back_ios, text2:(userMap!['email']), text1:(userMap!['name']),),
              Container(

                height: size.height *.79,
                width: size.width,
                child: StreamBuilder<QuerySnapshot>(
                  stream: _firestore
                      .collection('chatroom')
                      .doc(chatRoomId)
                      .collection('chats')
                      .orderBy("time", descending: false)
                      .snapshots(),
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.data != null) {
                      return ListView.builder(

                        itemCount: snapshot.data?.docs.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.only(left: 14,right: 14,top: 10,),
                            child: Align(
                              alignment: (snapshot.data!.docs[index]['message'] == "receiver"?Alignment.topLeft:Alignment.topRight),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: (snapshot.data!.docs[index]['message'] == "receiver"?Colors.grey.shade200:Colors.lightGreen.shade100),
                                ),
                                padding: EdgeInsets.all(16),
                                child: Text(snapshot.data!.docs[index]['message'], style: TextStyle(fontSize: 15),),
                              ),
                            ),
                          );
//
                          // Map<String, dynamic> map =
                          //     snapshot.data.docs[index].data();
                          // return messages(size, map);
                        },
                      );
                    } else {
                      return Container();
                    }
                  },
                ),
              ),

              Container(

                height: size.height*.060,
                width: size.width,
                decoration:  BoxDecoration(

                ),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add,color: Colors.blue,size: 30,),
                    SizedBox(width: 10,),
                   Container(height: size.height*.030,width: size.width*.50,
                     decoration: BoxDecoration(
                       color: Colors.grey.shade200,
                       borderRadius: BorderRadius.circular(20),
                     ),
                     child: TextField(

                       controller: _message,
                       decoration: InputDecoration(

                           border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(20))),
                     ),
                   ),
                    SizedBox(width: 30,),
                    IconButton(
                        onPressed: () {
                          onSendMessage();
                        },
                        icon:  Icon(Icons.send,color: Colors.blue,)),
                    SizedBox(width: 10,),
                    Icon(Icons.camera_alt,color: Colors.blue,size: 30,),
                    SizedBox(width: 10,),
                    Icon(Icons.keyboard_voice_outlined,color: Colors.blue,size: 30,),


                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }


}
