import 'package:big_cart/View/Widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});
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
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 6.h),
          height: size.height * 0.72,
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius:
                  BorderRadiusDirectional.vertical(top: Radius.circular(16.r))),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'انشاء حساب',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'إنشاء حساب بسرعة',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    const SizedBox(height: 24),
                    AppTextFormField(
                      obscureText: false,
                      hintText: 'اسم المستخدم',
                      icon: Icons.person,
                    ),
                    const SizedBox(height: 16),
                    AppTextFormField(
                      obscureText: false,
                      hintText: 'رقم الهاتف',
                      icon: Icons.phone,
                    ),
                    const SizedBox(height: 16),
                    AppTextFormField(
                      obscureText: false,
                      hintText: 'البريد الإلكتروني',
                      icon: Icons.email,
                    ),
                    const SizedBox(height: 16),
                    AppTextFormField(
                      hintText: 'كلمة المرور',
                      icon: Icons.lock,
                      obscureText: true,
                    ),
                    const SizedBox(height: 16),
                    AppTextFormField(
                      hintText: 'تأكيد كلمة المرور',
                      icon: Icons.lock,
                      obscureText: true,
                    ),
                    const SizedBox(height: 24),
                    MaterialButton(
                      height: 65.h,
                      minWidth: double.infinity,
                      color: Colors.green,
                      onPressed: () {},
                      child: const Text(
                        "تسحيل الدخول",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text('تسجيل',
                              style: TextStyle(color: Colors.green)),
                        ),
                        const Text('هل لديك حساب بالفعل؟'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: Container(
          height: size.height * 0.55,
          alignment: Alignment.topCenter,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/shop.jpeg"),
                alignment: Alignment.topCenter,
                fit: BoxFit.cover),
          ),
        ));
  }
}
