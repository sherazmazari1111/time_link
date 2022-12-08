// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:time_link_sheraz_ahmad/Modules/HomeModule/View/home_page.dart';
// import 'package:time_link_sheraz_ahmad/Modules/OnboardingModule/view/Components/custom_container.dart';
// import 'package:time_link_sheraz_ahmad/Utils/custom_txt.dart';
//
// // import '../../../Utils/custom_appBarr.dart';
// // import '../../AuthModule/View/signup_page.dart';
//
// class CustomTimer extends StatefulWidget {
//
//
//   @override
//   _CustomTimerState createState() => _CustomTimerState();
// }
// class _CustomTimerState extends State<CustomTimer> {
//   static var countdownDuration = Duration(minutes: 10);
//   static var countdownDuration1 = Duration(minutes: 10);
//   Duration duration = Duration();
//   Duration duration1 = Duration();
//   Timer? timer;
//   Timer? timer1;
//   bool countDown = true;
//   bool countDown1 = true;
//
//
//   @override
//   void initState() {
//     var hours;
//     var mints;
//     var secs;
//     hours = int.parse("00");
//     mints = int.parse("00");
//     secs = int.parse("00");
//     countdownDuration = Duration(hours: hours, minutes: mints, seconds: secs);
//     startTimer();
//     reset();
//     var hours1;
//     var mints1;
//     var secs1;
//     hours1 = int.parse("10");
//     mints1 = int.parse("00");
//     secs1 = int.parse("00");
//     countdownDuration1 =
//         Duration(hours: hours1, minutes: mints1, seconds: secs1);
//     startTimer1();
//     reset1();
//     super.initState();
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     final size= MediaQuery.of(context).size;
//     return WillPopScope(
//       onWillPop: _onWillPop,
//       child: Scaffold(
//
//         body: Container(
//
//           color: Colors.white,
//           // width: double.infinity,
//           width: size.width,
//           height: size.height,
//           // decoration: BoxDecoration(
//           //   gradient: LinearGradient(colors: [Colors.deepPurple.withOpacity(.50),Colors.purpleAccent.shade700],),
//           // ),
//           child: Column(
//             // mainAxisAlignment: MainAxisAlignment.start,
//
//               children: [
//
//                 Container(
//                   padding: EdgeInsets.only(left: 30,right: 30),
//                   height: size.height*.50,
//                   width: size.width,
//                   color: Colors.white,
//                   child: SingleChildScrollView(
//                     child: Column(
//                       // crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Text(
//                           "Order i'd",
//                           style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
//                         ),
//                         SizedBox(height: 20,),
//                         Text(
//                           "Order Completion Time",
//                           style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
//                         ),
//                         Container(
//                             margin: EdgeInsets.only(top: 30, bottom: 30),
//                             child: buildTime()),
//
//
//
//                         SizedBox(height: 40,),
//                         CustomContForOrders(hight: size.height*.050, width: size.width*.45,borderradius: BorderRadius.circular(15),pdng: EdgeInsets.only(left: 53,),color1: Colors.deepPurple.withOpacity(.50),color2: Colors.purpleAccent.shade700,txt: "Order ready",),
//                         SizedBox(height: 40,),
//                         CustomContForOrders(hight: size.height*.050, width: size.width*.45,borderradius: BorderRadius.circular(15),pdng: EdgeInsets.only(left: 53,),color1: Colors.deepPurple.withOpacity(.50),color2: Colors.purpleAccent.shade700,txt: "Order Qr",),
//
//                       ],),
//                   ),
//                 ),
//
//
//               ]),
//         ),
//
//       ),
//     );
//   }
//
//   Future<bool> _onWillPop() async {
//     final isRunning = timer == null ? false : timer!.isActive;
//     if (isRunning) {
//       timer!.cancel();
//     }
//     Navigator.of(context, rootNavigator: true).pop(context);
//     return true;
//   }
//
//   void reset() {
//     if (countDown) {
//       setState(() => duration = countdownDuration);
//     } else {
//       setState(() => duration = Duration());
//     }
//   }
//
//   void reset1() {
//     if (countDown) {
//       setState(() => duration1 = countdownDuration1);
//     } else {
//       setState(() => duration1 = Duration());
//     }
//   }
//
//   void startTimer() {
//     timer = Timer.periodic(Duration(seconds: 1), (_) => addTime());
//   }
//
//   void startTimer1() {
//     timer = Timer.periodic(Duration(seconds: 1), (_) => addTime1());
//   }
//
//   void addTime() {
//     final addSeconds = 1;
//     setState(() {
//       final seconds = duration.inSeconds + addSeconds;
//       if (seconds < 0) {
//         timer?.cancel();
//       } else {
//         duration = Duration(seconds: seconds);
//       }
//     });
//   }
//
//   void addTime1() {
//     final addSeconds = 1;
//     setState(() {
//       final seconds = duration1.inSeconds - addSeconds;
//       if (seconds < 0) {
//         timer1?.cancel();
//       } else {
//         duration1 = Duration(seconds: seconds);
//       }
//     });
//   }
//
//   Widget buildTime() {
//     String twoDigits(int n) => n.toString().padLeft(2, '0');
//     final hours = twoDigits(duration.inHours);
//     final minutes = twoDigits(duration.inMinutes.remainder(60));
//     final seconds = twoDigits(duration.inSeconds.remainder(60));
//     return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//       buildTimeCard(time: hours, header: 'HOURS'),
//       SizedBox(
//         width: 30,
//       ),
//       buildTimeCard(time: minutes, header: 'MINUTES'),
//       SizedBox(
//         width: 30,
//       ),
//       buildTimeCard(time: seconds, header: 'SECONDS'),
//     ]);
//   }
//
//   //
//
//   Widget buildTimeCard({required String time, required String header}) =>
//       Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             padding: EdgeInsets.all(8),
//             decoration: BoxDecoration(
//                 gradient: LinearGradient(colors: [Colors.deepPurple.withOpacity(.50),Colors.purpleAccent.shade700],),
//                 borderRadius: BorderRadius.circular(20)),
//             child: Text(
//               time,
//               style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                   fontSize: 50),
//             ),
//           ),
//           SizedBox(
//             height: 24,
//           ),
//           Text(header, style: TextStyle(color: Colors.black)),
//         ],
//       );
// }

import 'dart:async';

import 'package:flutter/material.dart';

import '../../../OnboardingModule/view/Components/custom_container.dart';



class TimerScreen extends StatefulWidget {
  TimerScreen();

  @override
  _TimerScreenState createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  static var countdownDuration = Duration(minutes: 10);
  static var countdownDuration1 = Duration(minutes: 10);
  Duration duration = Duration();
  Duration duration1 = Duration();
  Timer? timer;
  Timer? timer1;
  bool countDown = true;
  bool countDown1 = true;

  @override
  void initState() {
    var hours;
    var mints;
    var secs;
    hours = int.parse("00");
    mints = int.parse("00");
    secs = int.parse("00");
    countdownDuration = Duration(hours: hours, minutes: mints, seconds: secs);
    startTimer();
    reset();
    var hours1;
    var mints1;
    var secs1;
    hours1 = int.parse("10");
    mints1 = int.parse("00");
    secs1 = int.parse("00");
    countdownDuration1 =
        Duration(hours: hours1, minutes: mints1, seconds: secs1);
    startTimer1();
    reset1();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;

    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
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
                  "Timer",
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
        body: Container(
          padding: EdgeInsets.only(left: 40,right: 40),
          color: Colors.white,
          // width: double.infinity,
          width: size.width,
          height: size.height,

          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Order i'd",
                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    "Order Completion Time",
                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                  ),

                  Container(
                      margin: EdgeInsets.only(top: 30, bottom: 30),
                      child: buildTime1()),

                  CustomContForOrders(hight: size.height*.13, width: size.width,borderradius: BorderRadius.circular(15),pdng: EdgeInsets.only(left: 53,),color1: Colors.deepPurple.withOpacity(.50),color2: Colors.purpleAccent.shade700,txt: "Order ready",),
                  SizedBox(height: 30,),
                  CustomContForOrders(hight: size.height*.080, width: size.width*.45,borderradius: BorderRadius.circular(15),pdng: EdgeInsets.only(left: 53,),color1: Colors.deepPurple.withOpacity(.50),color2: Colors.purpleAccent.shade700,txt: "Order Qr",),
SizedBox(height: 30,),
                ]),
          ),
        ),
      ),
    );
  }

  Future<bool> _onWillPop() async {
    final isRunning = timer == null ? false : timer!.isActive;
    if (isRunning) {
      timer!.cancel();
    }
    Navigator.of(context, rootNavigator: true).pop(context);
    return true;
  }

  void reset() {
    if (countDown) {
      setState(() => duration = countdownDuration);
    } else {
      setState(() => duration = Duration());
    }
  }

  void reset1() {
    if (countDown) {
      setState(() => duration1 = countdownDuration1);
    } else {
      setState(() => duration1 = Duration());
    }
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (_) => addTime());
  }

  void startTimer1() {
    timer = Timer.periodic(Duration(seconds: 1), (_) => addTime1());
  }

  void addTime() {
    final addSeconds = 1;
    setState(() {
      final seconds = duration.inSeconds + addSeconds;
      if (seconds < 0) {
        timer?.cancel();
      } else {
        duration = Duration(seconds: seconds);
      }
    });
  }

  void addTime1() {
    final addSeconds = 1;
    setState(() {
      final seconds = duration1.inSeconds - addSeconds;
      if (seconds < 0) {
        timer1?.cancel();
      } else {
        duration1 = Duration(seconds: seconds);
      }
    });
  }


  Widget buildTime1() {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration1.inHours);
    final minutes = twoDigits(duration1.inMinutes.remainder(60));
    final seconds = twoDigits(duration1.inSeconds.remainder(60));
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      buildTimeCard(time: hours, header: 'HOURS'),
      SizedBox(
        width: 20,
      ),
      buildTimeCard(time: minutes, header: 'MINUTES'),
      SizedBox(
        width: 20,
      ),
      buildTimeCard(time: seconds, header: 'SECONDS'),
    ]);
  }

  Widget buildTimeCard({required String time, required String header}) =>
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                // color: Colors.white,
              gradient: LinearGradient(colors: [Colors.deepPurple.withOpacity(.50),Colors.purpleAccent.shade700],),
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              time,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 50),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Text(header, style: TextStyle(color: Colors.black),),
        ],
      );
}