import 'package:big_cart/View/Widgets/app_text_form_field.dart';
import 'package:big_cart/core/constant/app_colors.dart';
import 'package:big_cart/view/Screens/home.dart';
import 'package:big_cart/view/Screens/login.dart';
import 'package:big_cart/view/Screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Signup extends StatelessWidget {
  static String routeName = '/singup';
  const Signup({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text("مرحبا"),
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        bottomSheet: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          height: size.height * 0.72.h,
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius:
                  BorderRadiusDirectional.vertical(top: Radius.circular(24.r))),
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
                      style: TextStyle(fontSize: 16.sp, color: Colors.grey),
                    ),
                    SizedBox(height: 24.h),
                    const AppTextFormField(
                      obscureText: false,
                      hintText: 'اسم المستخدم',
                      icon: Icons.person,
                    ),
                    SizedBox(height: 12.h),
                    const AppTextFormField(
                      obscureText: false,
                      hintText: 'رقم الهاتف',
                      icon: Icons.phone,
                    ),
                    SizedBox(height: 12.h),
                    const AppTextFormField(
                      obscureText: false,
                      hintText: 'البريد الإلكتروني',
                      icon: Icons.email,
                    ),
                    SizedBox(height: 12.h),
                    const AppTextFormField(
                      hintText: 'كلمة المرور',
                      icon: Icons.lock,
                      obscureText: true,
                    ),
                    SizedBox(height: 12.h),
                    const AppTextFormField(
                      hintText: 'تأكيد كلمة المرور',
                      icon: Icons.lock,
                      obscureText: true,
                    ),
                    SizedBox(height: 16.h),
                    Container(
                      padding: const EdgeInsets.all(0),
                      decoration:
                          BoxDecoration(gradient: AppColors.buttonColor),
                      child: MaterialButton(
                        height: 65.h,
                        minWidth: double.infinity,
                        onPressed: () {
                          Get.to(Home());
                        },
                        child: const Text(
                          "تسحيل الدخول",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'هل لديك حساب بالفعل؟',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        TextButton(
                          onPressed: () {
                            Get.to(Login());
                          },
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
        body: Container(
          height: size.height * 0.42.h,
          alignment: Alignment.topCenter,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/signup.jpeg"),
                alignment: Alignment.topCenter,
                fit: BoxFit.cover),
          ),
        ));
  }
}
