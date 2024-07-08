import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maharaj/screen/dashboard_screen.dart';
import 'package:maharaj/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {

    super.initState();
    Timer(const Duration(seconds: 4), () {

      Get.offAll(()=>DashboardSreen(),curve: Curves.easeIn,transition: Transition.rightToLeftWithFade);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        color: kOrange,
        child: Image.asset("images/Logo.png"),
      ),
    );
  }
}
