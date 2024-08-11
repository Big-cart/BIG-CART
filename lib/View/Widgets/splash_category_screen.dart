import 'package:big_cart/core/Widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashCategorySelected extends StatelessWidget {
  final String categreyName;
  final String categreyImage;

  const SplashCategorySelected(
      {super.key, required this.categreyName, required this.categreyImage});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      isPadding: false,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(categreyName,
                  style: Theme.of(context).textTheme.displayLarge),
              SizedBox(height: 40.h),
              Image.asset(
                categreyImage, // ضع مسار الصورة هنا
                width: 350.w,
                height: 500.h,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
