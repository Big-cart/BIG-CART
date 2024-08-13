import 'package:big_cart/View/Screens/Users_View/Auth/sure_psaa.dart';
import 'package:big_cart/View/Widgets/app_button.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPass extends StatelessWidget {
  const ForgetPass({super.key});

  @override
  Widget build(BuildContext context) {
    // الحصول على ارتفاع الشاشة

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/pass_bacg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 60), // مسافة من الأعلى

            const SizedBox(height: 20),

            // محتوى النصوص وإدخال البريد الإلكتروني
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Text(
                    'نسيت كلمة المرور',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'ادخل بريدك الالكتروني لاستعادة كلمة المرور',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'email@gmil.com',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
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
                  const SizedBox(height: 30),
                  AppButton(
                    child: Text(
                      "أرسال",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    onPressed: () {
                      Get.to(const SurePass());
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
