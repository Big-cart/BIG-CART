
import 'package:big_cart/core/Routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:big_cart/View/Screens/Users_View/Auth/compelet_pass.dart';
import 'package:big_cart/View/Widgets/app_button.dart';

class ResetPasswordFarmer extends StatelessWidget {
  const ResetPasswordFarmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/forgpassfarmer.png"),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(),
                child: IntrinsicHeight(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 370.h), // مسافة من الأعلى

                        // نص ادخل كلمة المرور الجديدة
                        const Text(
                          'ادخل كلمة المرور الجديدة',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 20.h),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 35),
                          child: Column(
                            children: [
                              // حقل إدخال كلمة المرور الجديدة
                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: 'أدخل كلمة المرور الجديدة',
                                  prefixIcon: Icon(Icons.lock),
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                             SizedBox(height: 20.h),

                              // حقل تأكيد كلمة المرور
                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: 'تأكيد كلمة المرور',
                                  prefixIcon: Icon(Icons.lock),
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 80.h),
                        Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: AppButton(
                            child: Text(
                              "تأكيد",
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            onPressed: () {
                              Get.toNamed(AppRoute.successResetPassScreenFarmer);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
