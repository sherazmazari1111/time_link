// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:time_link_sheraz_ahmad/Modules/AuthModule/View/login_page.dart';
// import 'package:time_link_sheraz_ahmad/Utils/navigation_bar.dart';
// // import 'package:youchatapp/AthenticationModule/View/login_page.dart';
// // import 'package:youchatapp/home_page.dart';
// // import 'package:splash/AUthModule/View/login_view.dart';
// // import 'package:splash/InboxModule/View/inbox_view.dart';
// //
// // import '../../AUthModule/Services/fireestore_services.dart';
// // import '../../InboxModule/View/inbox_page.dart';
// // import '../../InboxModule/ViewModel/inbox_vm.dart';
// // import '../../Utils/get_storage_handler.dart';
// import '../../../Utils/get_storage_services.dart';
// import '../Services/firestore_cloud_services.dart';
// // import '../../Utils/get_storage_services.dart';
//
// class SplashVM extends GetxController {
//   final getStorageHandler = GetStorageHandler();
//   final FirestoreServices firestoreServices = FirestoreServices();
//   // final InboxVM inboxVM = Get.put(InboxVM());
//
//   @override
//   void onReady() {
//     // TODO: implement onReady
//     super.onReady();
//     loadLocalData();
//   }
//
//   // @override
//   // void onInit() {
//   //   // TODO: implement onInit
//   //   super.onInit();
//   //   loadLocalData();
//   // }
//
//   loadLocalData() async {
//     final String localuserId = getStorageHandler.getUserId();
//
//     if (localuserId.isNotEmpty) {
//       Future.delayed(const Duration(seconds: 2), () async {
//         var userD = await firestoreServices.getFirebaseData(localuserId);
//         if (userD != null) {
//           // inboxVM.userModel.value = userD;
//         }
//         // authVM.getData();
//         Get.offAll(() => NavigationScreen());
//       });
//     } else {
//       Get.offAll(() => LoginView());
//     }
//   }
// }