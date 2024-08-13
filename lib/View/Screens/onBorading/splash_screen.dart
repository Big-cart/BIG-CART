import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controller/users/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashScreenControllerImp());
    return Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bacg1.png"),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo.png",
              width: 300,
              height: 100,
            ),
            const SizedBox(height: 30),
            Image.asset(
              "assets/images/onbo1.png",
              width: 300,
              height: 300,
            ),
          ],
        ),
      );
  }
}
