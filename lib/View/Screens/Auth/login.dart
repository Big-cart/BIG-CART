import 'package:big_cart/core/Routes/app_routes.dart';
import 'package:big_cart/core/Widgets/app_auth_scaffold.dart';
import 'package:big_cart/View/Widgets/Auth/app_text_form_field.dart';
import 'package:big_cart/View/Widgets/app_bottom_sheet.dart';
import 'package:big_cart/View/Widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AppAuthScaffold(
      title: "مرحبا",
      bottomSheet: AppBottomSheet(
        height: size.height * 0.6.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                "سجل الدخول الى حسابك",
                style: TextStyle(color: Colors.black45),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            const AppTextFormField(
                hintText: "اليريد الالكتزوني",
                icon: Icon(Icons.mail),
                obscureText: false),
            SizedBox(height: 15.h),
            const AppTextFormField(
              hintText: "كلمة السر ",
              suffixIcon: Icon(Icons.remove_red_eye_outlined),
              obscureText: false,
              icon: Icon(Icons.lock),
            ),
            SizedBox(height: 25.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Switch(
                      value: false,
                      onChanged: (val) {},
                    ),
                    const Text(
                      "ادكرني",
                      style: TextStyle(color: Colors.black45),
                    ),
                  ],
                ),
                const InkWell(
                  child: Text(
                    "نسيت كلمة المرور",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50.h),
            AppButton(
              child: Text(
                "تسحيل الدخول",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              onPressed: () {
                Get.toNamed(AppRoute.home);
              },
            ),
            SizedBox(
              height: 10.h,
            ),
            Wrap(
              children: [
                Text(
                  " ليس لديك حساب ؟",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(AppRoute.signup);
                  },
                  child: const Text(
                    " \tأنشاء حساب ",
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      child: Container(
        height: double.infinity,
        alignment: Alignment.topCenter,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/login.jpeg"),
              alignment: Alignment.topCenter,
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
