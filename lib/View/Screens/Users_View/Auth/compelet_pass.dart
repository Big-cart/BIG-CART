
import 'package:big_cart/View/Screens/Users_View/home.dart';
import 'package:big_cart/View/Widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Completpass extends StatelessWidget {
  const Completpass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/completpassbacg.png"),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // الصورة الصغيرة في الوسط
            Image.asset(
              'assets/images/complletPass.png', // ضع هنا مسار الصورة الصغيرة
              width: 350,
              height: 350,
            ),
            const SizedBox(height: 1),
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: AppButton(
                child: Text(
                  "تم",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                onPressed: () {
                  Get.to(Home());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
