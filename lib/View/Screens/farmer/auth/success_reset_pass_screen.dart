
import 'package:big_cart/View/Screens/Users_View/home.dart';
import 'package:big_cart/View/Widgets/app_button.dart';
import 'package:big_cart/core/Routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessResetPassScreenFarmer extends StatelessWidget {
  const SuccessResetPassScreenFarmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/susscsbacg.png"),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // الصورة الصغيرة في الوسط
            const SizedBox(height: 600),
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: AppButton(
                child: Text(
                  "تم",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                onPressed: () {
                 Get.toNamed(AppRoute.sections);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
