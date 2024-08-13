import 'package:big_cart/View/widget/auth/login/custom_button.dart';
import 'package:big_cart/View/widget/auth/login/custom_container_login.dart';
import 'package:big_cart/View/widget/auth/login/custom_text_form_field.dart';
import 'package:big_cart/controller/driver/Auth/login_controller.dart';
import 'package:big_cart/core/Widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginFarmer extends StatelessWidget {
  const LoginFarmer({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerDriverImp controllerDriverImp =
        Get.put(LoginControllerDriverImp());
    return AppScaffold(
      isPadding: false,
      backColor: Colors.white,
      child: SafeArea(
        child: Stack(
          children: [
            // Positioned.fill(
            //   child: Image.asset(
            //     'assets/images/background.png', // الخلفية
            //     fit: BoxFit.cover,
            //   ),
            // ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 40.0.h), // مسافة من الأعلى
                  Center(
                    child: Image.asset(
                      "assets/images/farmerlog.png", // الصورة الصغيرة
                      width: 300.0.w,
                      height: 300.0.h,
                    ),
                  ),
                  SizedBox(
                    height: 20.0.h,
                  ),
                  CustomContainerLogin(
                    child: Column(
                      children: [
                        const Text("تسجيل الدخول"),
                        SizedBox(
                          height: 20.0.h,
                        ),
                        Form(
                          child: Column(
                            children: [
                              CustomTextFormFieldDriver(
                                controller: controllerDriverImp.email,
                                hintText: 'إسم المستخدم',
                                icon: const Icon(Icons.person_pin),
                              ),
                              SizedBox(
                                height: 16.0.h,
                              ),
                              CustomTextFormFieldDriver(
                                controller: controllerDriverImp.password,
                                hintText: 'كلمة المرور',
                                icon: const Icon(Icons.lock),
                                isPass: true,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.0.h,
                        ),
                        const Text("هل نسيت كلمة المرور؟"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24.0.h,
                  ),
                  GetBuilder<LoginControllerDriverImp>(
                    init: LoginControllerDriverImp(),
                    builder: (controller) {
                      return CustomButton(
                        onPressed: () {
                          controller.loginWithEmail(context);
                        },
                        text: 'تسجيل دخول',
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
