import 'package:big_cart/View/Widgets/splash_category_screen.dart';
import 'package:big_cart/controller/users/cow_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CowScreen extends StatelessWidget {
  const CowScreen({super.key});
  @override
  Widget build(BuildContext context) {
    CowSplashScreenImp cowSplashScreenImp = Get.put(CowSplashScreenImp());
    return const SplashCategorySelected(
        categreyName: "المواشي و الدواجن",
        categreyImage: "assets/images/caw.png");
  }
}
