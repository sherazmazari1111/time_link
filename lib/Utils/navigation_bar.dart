// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // import '../Modules/AuthModule/View/login_page.dart';
// // import '../Modules/AuthModule/View/signup_page.dart';
// // import '../Modules/HomeModule/View/home_page.dart';
// // import '../Modules/OrdersModule/View/completed_orders.dart';
// // import '../Modules/OrdersModule/View/orders_page..dart';
// // class NavigationBArView extends StatefulWidget {
// //   const NavigationBArView({Key? key}) : super(key: key);
// //
// //   @override
// //   State<NavigationBArView> createState() => _NavigationBArViewState();
// // }
// //
// // class _NavigationBArViewState extends State<NavigationBArView> {
// //   final Screens= [
//     HomePage(),
//     CompletedOrders(),
//     LoginView(),
//     SignUpPage(),
// //
// //   ];
// //   int _currentindex = 0;
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       floatingActionButton: FloatingActionButton(
//         // backgroundColor: Colors.blue[900],
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (context) =>  OrdersPage()),
//
//           );
//         },
//         child: Container(
//           height: 90,
//           width: 90,
//           child: Icon(Icons.add,color: Colors.white,),
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             gradient: LinearGradient(colors: [Colors.white,Colors.purpleAccent.shade700],),
//
//           ),
//         ),
//
//       ),
// //       bottomNavigationBar: BottomNavigationBar(
// //         currentIndex: _currentindex,
// //         selectedItemColor: Colors.purple,
// //         unselectedItemColor: Colors.black,
// //         showSelectedLabels: true,
// //         showUnselectedLabels: true,
// //
// //         backgroundColor: Colors.white,
// //         type: BottomNavigationBarType.fixed,
// //         items:  [
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.home_outlined),
// //             label: "Home",
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.shopping_cart_checkout_outlined),
// //             label: "Completed Orders",
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.qr_code_2_outlined),
// //             label: "Scan Qr",
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.person_outline,),
// //             label: "Profile",
// //           ),
// //
// //         ],
// //         onTap: (index) {
// //           setState(() {
// //             _currentindex = index;
// //           });
// //         },
// //       ),
// //       body: Screens[_currentindex],
// //     );
// //   }
// // }
// import 'package:flutter/cupertino.dart';
//
// import '../Modules/AuthModule/View/login_page.dart';
// import '../Modules/AuthModule/View/signup_page.dart';
// import '../Modules/HomeModule/View/home_page.dart';
// import '../Modules/OrdersModule/View/completed_orders.dart';
//
// class TabScaffoldExample extends StatefulWidget {
//   const TabScaffoldExample({super.key});
//
//   @override
//   State<TabScaffoldExample> createState() => _TabScaffoldExampleState();
// }
//
// class _TabScaffoldExampleState extends State<TabScaffoldExample> {
//     final Screens= [
//     HomePage(),
//     CompletedOrders(),
//     LoginView(),
//     SignUpPage(),
//
//   ];
//   int _currentindex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoTabScaffold(
//       tabBar: CupertinoTabBar(
//                 onTap: (index) {
//           setState(() {
//             _currentindex = index;
//           });
//         },
// currentIndex: _currentindex,
//       items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(CupertinoIcons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(CupertinoIcons.search_circle_fill),
//             label: 'Explore',
//           ),
//         BottomNavigationBarItem(
//           icon: Icon(CupertinoIcons.search_circle_fill),
//           label: 'Explore',
//         ), BottomNavigationBarItem(
//           icon: Icon(CupertinoIcons.search_circle_fill),
//           label: 'Explore',
//         ),
//         ],
//       ),
//       tabBuilder: (BuildContext context, int index) {
//         return CupertinoTabView(
//           builder: (BuildContext context) {
//             return CupertinoPageScaffold(
//               navigationBar: CupertinoNavigationBar(
//                 middle: HomePage(),
//               ),
//               child: Center(
//                 child: CupertinoButton(
//                   child: const Text('Next page'),
//                   onPressed: () {
//                     Navigator.of(context).push(
//                       CupertinoPageRoute<void>(
//                         builder: (BuildContext context) {
//                           return CupertinoPageScaffold(
//                             navigationBar: CupertinoNavigationBar(
//                               middle: HomePage(),
//
//                             ),
//                           child: LoginView(),
//                           );
//                         },
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             );
//           },
//         );
//       },
//           );
//   }
// }
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:time_link_sheraz_ahmad/Modules/OrdersModule/View/add_device.dart';
// import 'package:time_link_sheraz_ahmad/Modules/OrdersModule/View/orders_page..dart';
// import 'package:time_link_sheraz_ahmad/Modules/ProfileModule/View/profile_page.dart';
//
// import '../Modules/AuthModule/View/login_page.dart';
// import '../Modules/AuthModule/View/signup_page.dart';
// import '../Modules/HomeModule/View/home_page.dart';
// import '../Modules/OrdersModule/View/completed_orders.dart';
// // import 'package:flutter_cupertino_tabbar_demo/splash_screen.dart';
//
//
//
// class NavigationScreen extends StatefulWidget {
//   NavigationScreen({Key? key}) : super(key: key);
//
//   @override
//   _NavigationScreenState createState() {
//     return _NavigationScreenState();
//   }
// }
//
// class _NavigationScreenState extends State<NavigationScreen> {
//   List<Widget> data = [  HomePage(),
//     CompletedOrders(),
//     AddDevice(),
//     ProfilePage(),];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//         body: CupertinoTabScaffold(
//           tabBar: CupertinoTabBar(
//             backgroundColor: Colors.white,
//             activeColor: Colors.purple,
//             inactiveColor: Colors.grey,
//             height: 70,
//             iconSize: 40,
//
//             items:  [
//               BottomNavigationBarItem(
//
//                 icon: InkWell(
//                     onTap: (){
//                       Get.offAll(NavigationScreen());
//                     },
//                     child: Icon(CupertinoIcons.home)),
//                 label: "Home",
//               ),
//               BottomNavigationBarItem(
//                 icon: InkWell(
//                     // onTap: (){
//                     //   Get.offAll(CompletedOrders());
//                     // },
//                     child: Icon(CupertinoIcons.doc_chart)),
//                 label: "Completed Orders",
//               ),
//               BottomNavigationBarItem(
//                 icon: InkWell(
//                     // onTap: (){
//                     //   Get.offAll(AddDevice());
//                     // },
//                     child: Icon(CupertinoIcons.qrcode_viewfinder)),
//                 label: "Scan Qr",
//               ),
//               BottomNavigationBarItem(
//                 icon: InkWell(
//                     // onTap: (){
//                     //   Get.offAll(ProfilePage());
//                     // },
//                     child: Icon(CupertinoIcons.person)),
//                 label: "Profile",
//               )
//             ],
//           ),
//           tabBuilder: (context, index) {
//             return CupertinoTabView(
//               builder: (context) {
//                 return data[index];
//               },
//             );
//           },
//         )
//     );
//   }
// }

// class HomeScreenTab extends StatelessWidget {
//   const HomeScreenTab({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children:  [
//          ElevatedButton(onPressed: (){
//            Navigator.push(
//              context,
//              MaterialPageRoute(
//                  builder: (context) =>   OrdersPage()),
//
//            );
//          }, child: Text("next"),),
//           const Text(
//             "This is Home Page",
//             style: TextStyle(fontSize: 20),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class ProfileScreenTab extends StatelessWidget {
//   const ProfileScreenTab({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.asset("assets/powered_by.png",height: 270,width: 400,),
//           const Text(
//             "This is Profile Page",
//             style: TextStyle(
//               fontSize: 20,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time_link_sheraz_ahmad/Modules/HomeModule/View/home_page.dart';
import 'package:time_link_sheraz_ahmad/Modules/OrdersModule/View/add_device.dart';
import 'package:time_link_sheraz_ahmad/Modules/OrdersModule/View/completed_orders.dart';
import 'package:time_link_sheraz_ahmad/Modules/OrdersModule/View/orders_page..dart';
import 'package:time_link_sheraz_ahmad/Modules/ProfileModule/View/profile_page.dart';

import '../Modules/HomeModule/View/Components/dialoge_box.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentindex=0;
  final tabs=[
    HomePage(),
    CompletedOrders(),
    AddDevice(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(onPressed: (){
        showDialog(context: context, builder: (BuildContext context){
          return DialogBox();
        });
      },
    child: Container(
          height: 90,
          width: 90,
          child: Icon(Icons.add,color: Colors.white,),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            // color: Colors.purpleAccent.shade700,
            gradient: LinearGradient(colors: [Colors.white,Colors.purpleAccent.shade700],),

          ),
        ),


      ),
      body: tabs[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.purple.shade400,
          unselectedItemColor: Colors.grey,
          currentIndex: _currentindex,
          showSelectedLabels: true,
          onTap: (index){
            setState(() {
              _currentindex=index;
            });
          },
          iconSize: 40,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/order delivery.png")),label: "Completed Order"),
            BottomNavigationBarItem(icon: Icon(Icons.qr_code_2_sharp),label: "Qr Code"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),

          ]),
    );
  }
}
