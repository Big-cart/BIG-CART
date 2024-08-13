import 'package:big_cart/View/Widgets/Auth/app_text_form_field.dart';
import 'package:big_cart/View/Widgets/app_button.dart';
import 'package:big_cart/controller/users/Auth/login_controller.dart';
import 'package:big_cart/core/Routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginFarmer extends StatelessWidget {
  const LoginFarmer({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controllerImp = Get.put(LoginControllerImp());
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bacfarmlog.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 200.h),
                  Text(
                    'تسجيل دخول',
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: AppTextFormField(
                      controller: controllerImp.email,
                      hintText: "البريد الإلكتروني",
                      icon: const Icon(Icons.mail),
                      obscureText: false,
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: AppTextFormField(
                      controller: controllerImp.password,
                      hintText: "كلمة السر",
                      suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                      obscureText: true,
                      icon: const Icon(Icons.lock),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: TextButton(
                        onPressed: () {
                         Get.toNamed(AppRoute.forgetPassFarmer);
                        },
                        child: Text(
                          'نسيت كلمة السر؟',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  GetBuilder<LoginControllerImp>(
                    init: LoginControllerImp(),
                    builder: (controllerImp) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 60.w),
                        child: AppButton(
                          child: Text(
                            "تسجيل الدخول",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(fontSize: 18.sp),
                          ),
                          onPressed: () {
                            controllerImp.loginWithEmail(context);
                          },
                        ),
                      );
                    },
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
