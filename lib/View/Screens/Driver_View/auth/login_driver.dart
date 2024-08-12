import 'package:big_cart/View/widget/auth/login/custom_button.dart';
import 'package:big_cart/View/widget/auth/login/custom_container_login.dart';
import 'package:big_cart/View/widget/auth/login/custom_text_form_field.dart';
import 'package:big_cart/controller/driver/Auth/login_controller.dart';
import 'package:big_cart/core/Widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginDriver extends StatelessWidget {
  const LoginDriver({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerDriverImp controllerDriverImp =
        Get.put(LoginControllerDriverImp());
    return AppScaffold(
        isPadding: false,
        backColor: const Color(0xffEEF9E4),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/logindriverimage.png",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                // Image.asset(
                //   "assets/images/logo.png",
                // ),
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
                    )),
                    SizedBox(
                      height: 20.0.h,
                    ),
                    const Text("هل نسيت كلمة المرور؟"),
                  ],
                )),
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
                )
              ],
            ),
          ),
        ));
  }
}
