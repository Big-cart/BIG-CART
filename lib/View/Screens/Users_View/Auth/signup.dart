import 'package:big_cart/controller/users/Auth/signup_controller.dart';
import 'package:big_cart/core/Routes/app_routes.dart';
import 'package:big_cart/core/Widgets/app_auth_scaffold.dart';
import 'package:big_cart/View/Widgets/Auth/app_text_form_field.dart';
import 'package:big_cart/View/Widgets/app_bottom_sheet.dart';
import 'package:big_cart/core/constant/app_colors.dart';

import 'package:big_cart/View/Widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});
  @override
  Widget build(BuildContext context) {
    SignupControllerImp controllerImp = Get.put(SignupControllerImp());
    final size = MediaQuery.of(context).size;
    return AppAuthScaffold(
        bottomSheet: AppBottomSheet(
          height: size.height * 0.72.h,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'انشاء حساب',
                      style: TextStyle(
                          fontSize: 24.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      'إنشاء حساب بسرعة',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    SizedBox(height: 12.h),
                    AppTextFormField(
                        controller: controllerImp.name,
                        obscureText: false,
                        hintText: 'اسم المستخدم',
                        icon: const Icon(
                          Icons.person,
                        )),
                    SizedBox(height: 12.h),
                    AppTextFormField(
                        controller: controllerImp.phone,
                        obscureText: false,
                        hintText: 'رقم الهاتف',
                        icon: Icon(
                          Icons.phone,
                        )),
                    SizedBox(height: 12.h),
                    AppTextFormField(
                        controller: controllerImp.email,
                        obscureText: false,
                        hintText: 'البريد الإلكتروني',
                        icon: const Icon(
                          Icons.email,
                        )),
                    SizedBox(height: 12.h),
                    AppTextFormField(
                      controller: controllerImp.password,
                      hintText: 'كلمة المرور',
                      icon: const Icon(
                        Icons.lock,
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 12.h),
                    AppTextFormField(
                      controller: controllerImp.passwordConfirm,
                      hintText: 'تأكيد كلمة المرور',
                      icon: const Icon(
                        Icons.lock,
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 16.h),
                    GetBuilder<SignupControllerImp>(
                      builder: (controller) {
                        return AppButton(
                            onPressed: () {
                              controller.signUpWithEmail(context);
                            },
                            child: Text(
                              "أنشاء حساب",
                              style: Theme.of(context).textTheme.labelMedium,
                            ));
                      },
                    ),
                    SizedBox(height: 12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'هل لديك حساب بالفعل؟',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        TextButton(
                          onPressed:controllerImp.goToLogIn,
                          child: Text('تسجيل',
                              style: Theme.of(context).textTheme.bodyLarge),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        title: "مرحبا",
        child: Container(
          height: double.infinity,
          alignment: Alignment.topCenter,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/login.jpeg"),
                alignment: Alignment.topCenter,
                fit: BoxFit.cover),
          ),
        ));
  }
}
