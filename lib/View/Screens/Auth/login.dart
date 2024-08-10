import 'package:big_cart/core/Widgets/app_auth_scaffold.dart';
import 'package:big_cart/View/Widgets/Auth/app_text_form_field.dart';
import 'package:big_cart/View/Widgets/app_bottom_sheet.dart';
import 'package:big_cart/View/Widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AppAuthScaffold(
      title: "مرحبا",

      bottomSheet: AppBottomSheet(
        height: size.height * 0.52.h,
        child: SingleChildScrollView(
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
              SizedBox(height: 15.h),
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
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.h),
              const AppButton(
                  child: Text(
                "تسحيل الدخول",
              )),
              SizedBox(
                height: 10.h,
              ),
              const Wrap(
                children: [
                  Text(
                    "ليس لديك حساب ؟",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(color: Colors.black45),
                  ),
                  Text(
                    textDirection: TextDirection.rtl,
                    "أنشاء حساب",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),

      child: Container(
        height: size.height * 0.55.h,
        alignment: Alignment.topCenter,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/login.jpeg"),
              alignment: Alignment.topCenter,
              fit: BoxFit.cover),
        ),
      ),

      // SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       Image.asset(
      //           'assets/images/shop.jpeg'), // Add the path to your image here
      //       Padding(
      //         padding: const EdgeInsets.all(16.0),
      //         child: Column(
      //           children: [
      //             const Text(
      //               'مرحبا',
      //               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      //             ),
      //             const Text('سجل الدخول الى حسابك'),
      //             const TextField(
      //               decoration: InputDecoration(
      //                 labelText: 'البريد الالكتروني',
      //                 prefixIcon: Icon(Icons.email),
      //               ),
      //             ),
      //             const TextField(
      //               obscureText: true,
      //               decoration: InputDecoration(
      //                 labelText: 'كلمة المرور',
      //                 prefixIcon: Icon(Icons.lock),
      //               ),
      //             ),
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 TextButton(
      //                   onPressed: () {},
      //                   child: const Text('نسيت كلمة المرور'),
      //                 ),
      //                 Switch(
      //                   value: true,
      //                   onChanged: (value) {},
      //                   activeColor: Colors.green,
      //                   inactiveThumbColor: Colors.grey,
      //                 ),
      //               ],
      //             ),
      //             const SizedBox(height: 20),
      //             ElevatedButton(
      //               onPressed: () {},
      //               style: ElevatedButton.styleFrom(
      //                 backgroundColor: Colors.green,
      //                 padding: const EdgeInsets.symmetric(
      //                     horizontal: 50, vertical: 15),
      //               ),
      //               child: const Text('تسجيل الدخول'),
      //             ),
      //             TextButton(
      //               onPressed: () {},
      //               child: const Text('هل لديك حساب بالفعل؟ إنشاء حساب'),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
