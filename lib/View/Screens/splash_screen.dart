
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../controller/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SplashScreenControllerImp controller =Get.put(SplashScreenControllerImp());
    return Scaffold(
      body: Center(child: Image.asset("assets/images/bigCart.png"),),
    );
  }
}
