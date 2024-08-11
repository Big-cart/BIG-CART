import 'package:big_cart/View/Widgets/splash_category_screen.dart';
import 'package:flutter/material.dart';

class CowScreen extends StatelessWidget {
  const CowScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const SplashCategorySelected(
        categreyName: "المواشي و الدواجن",
        categreyImage: "assets/images/caw.png");
  }
}
