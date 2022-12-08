// import 'package:cloud_firestore/cloud_firestore.dart';
import '../Model/auth_model.dart';
//
//
// class FirestoreServices {
//   final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
//
//   FirestoreServices();
//
//   savesData(
//       UserModel user,
//
//       ) async {
//     Map<String, dynamic> data = {
//       "name": user.name,
//       "email": user.email,
//       "profileimage": user.profileImage,
//       "uid": user.userId,
//     };
//
//     DocumentSnapshot userExist = await FirebaseFirestore.instance
//         .collection("user")
//         .doc(user.userId)
//         .get();
//
//     if (userExist.exists) {
//       return;
//     } else {
//       await FirebaseFirestore.instance
//           .collection("users")
//           .doc(user.userId)
//           .set(data);
//     }
//   }
// }
// getFirebaseData(String userId) async {
//   // var firebaseFirestore;
//   final QuerySnapshot querySnapshot = await firebaseFirestore
//       .collection("users")
//       .where("userId", isEqualTo: userId)
//       .get();
//   if (querySnapshot.docs.isNotEmpty) {
//     final  DocumentSnapshot documentSnapshot = querySnapshot.docs.first;
//
//     return UserModel(
//       email: documentSnapshot.get('email'),
//       name: documentSnapshot.get('name'),
//       userId: documentSnapshot.get('userId'),
//       profileImage: documentSnapshot.get('profileImage'),
//     );
//   } else {
//     return;
//   }
// }
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:high_five/AuthModule/Model/user_model.dart';

import '../Model/auth_model.dart';

class FirestoreServices {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  saveDataFirebase(UserModel userModel) async {
    Map<String, dynamic> data = {
      "name": userModel.name,
      "email": userModel.email,
      "profileImage": userModel.profileImage,
      "userId": userModel.userId,
    };
    DocumentSnapshot userExist =
    await firebaseFirestore.collection("user").doc(userModel.userId).get();

    if (userExist.exists) {
      return;
    } else {
      await FirebaseFirestore.instance
          .collection("users")
          .doc(userModel.userId)
          .set(data);
    }
  }

  getFirebaseData(String userId) async {
    final QuerySnapshot querySnapshot = await firebaseFirestore
        .collection("users")
        .where("userId", isEqualTo: userId)
        .get();
    if (querySnapshot.docs.isNotEmpty) {
      final  DocumentSnapshot documentSnapshot = querySnapshot.docs.first;

      return UserModel(
        email: documentSnapshot.get('email'),
        name: documentSnapshot.get('name'),
        userId: documentSnapshot.get('userId'),
        profileImage: documentSnapshot.get('profileImage'),
      );
    } else {
      return;
    }
  }
}

