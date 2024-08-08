import 'package:big_cart/View/Screens/home.dart';
import 'package:big_cart/core/Widgets/app_auth_scaffold.dart';
import 'package:big_cart/View/Widgets/Auth/app_text_form_field.dart';
import 'package:big_cart/core/Widgets/app_bottom_sheet.dart';
import 'package:big_cart/core/constant/app_colors.dart';
// import 'package:big_cart/view/Screens/home.dart';
// import 'package:big_cart/view/Screens/login.dart';
// import 'package:big_cart/view/Screens/profile.dart';
import 'package:big_cart/core/Widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Signup extends StatelessWidget {
  static String routeName = '/singup';
  const Signup({super.key});
  @override
  Widget build(BuildContext context) {
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
                      style: TextStyle(fontSize: 16.sp, color: Colors.grey),
                    ),
                    SizedBox(height: 12.h),
                    const AppTextFormField(
                        obscureText: false,
                        hintText: 'اسم المستخدم',
                        icon: Icon(
                          Icons.person,
                        )),
                    SizedBox(height: 12.h),
                    const AppTextFormField(
                        obscureText: false,
                        hintText: 'رقم الهاتف',
                        icon: Icon(
                          Icons.phone,
                        )),
                    SizedBox(height: 12.h),
                    const AppTextFormField(
                        obscureText: false,
                        hintText: 'البريد الإلكتروني',
                        icon: Icon(
                          Icons.email,
                        )),
                    SizedBox(height: 12.h),
                    const AppTextFormField(
                      hintText: 'كلمة المرور',
                      icon: Icon(
                        Icons.lock,
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 12.h),
                    const AppTextFormField(
                      hintText: 'تأكيد كلمة المرور',
                      icon: Icon(
                        Icons.lock,
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 16.h),
                    const AppButton(
                        child: Text(
                      "أنشاء حساب",
                    )),
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
                            Get.to(const Home());
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
      

        title: "مرحبا",
        child: Container(
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
