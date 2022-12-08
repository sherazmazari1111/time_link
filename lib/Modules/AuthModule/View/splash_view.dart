import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:time_link_sheraz_ahmad/Modules/AuthModule/View/Components/authenticate.dart';
import 'package:time_link_sheraz_ahmad/Modules/AuthModule/View/login_page.dart';
import 'package:time_link_sheraz_ahmad/Modules/OnboardingModule/view/onboarding_screen_1.dart';

import '../ViewModel/splash_vm.dart';
class SplashView extends StatefulWidget {
   SplashView({Key? key}) : super(key: key);
  // final SplashVM splashVM = Get.put(SplashVM());
  @override
  State<SplashView> createState() => _SplashViewState();
}
class _SplashViewState extends State<SplashView> {
  void initState() {
    Timer(const Duration(seconds: 5), () {
     Get.offAll(Authenticate());
    });
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
final size= MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width:  size.width,
    color: Colors.blue.withOpacity(.5),
    child: Center(child: Image.asset("assets/images/splash.png")),

      ),
    );
  }
}