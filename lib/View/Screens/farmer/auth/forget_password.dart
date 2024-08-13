
import 'package:big_cart/View/Screens/Users_View/Auth/sure_psaa.dart';
import 'package:big_cart/View/Widgets/app_button.dart';
import 'package:big_cart/core/Routes/app_routes.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ForgetPassFarmer extends StatelessWidget {
  const ForgetPassFarmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/forgpassfarmer.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 450.h),
                  const Text(
                    'نسيت كلمة المرور',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    'ادخل بريدك الالكتروني لاستعادة كلمة المرور',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  const Text(
                    'email@gmail.com',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'البريد الالكتروني',
                        prefixIcon: const Icon(Icons.email),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height:  12.h),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: AppButton(
                      child: Text(
                        "أرسال",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      onPressed: () {
                        
                        Get.toNamed(AppRoute.resetPasswordFarmer);

                      },
                    ),
                  ),
                  SizedBox(height: 50.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}














