import 'package:big_cart/View/Widgets/app_button.dart';

import 'package:big_cart/core/Widgets/app_scaffold.dart';
import 'package:big_cart/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class EmptyCart extends StatelessWidget {
  const EmptyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      isPadding: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text("سلة التسوق"),
      ),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 30.h),
              // إضافة محتوى الصفحة
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/cart_icon.png', // ضع هنا مسار الصورة
                      width: 300.w,
                      height: 200.h,
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'سلة التسوق فارغة',
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'قم بإضافة المنتجات التي تريدها من صفحة الأقسام',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.0.w,
                  vertical: 10.h,
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: AppButton(
                    child: Text(
                      "ابدا التسوق",
                      style: Theme.of(
                        context,
                      ).textTheme.titleLarge,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
