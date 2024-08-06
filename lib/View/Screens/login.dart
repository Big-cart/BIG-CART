import 'package:big_cart/View/Widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
        height: size.height * 0.52,
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius:
                BorderRadiusDirectional.vertical(top: Radius.circular(16.r))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "سجل الدخول الى حسابك",
                style: TextStyle(color: Colors.black45),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            AppTextFormField(
              hintText: "البريد الالكتروني",
              icon: Icons.mail,
              obscureText: false,
            ),
            SizedBox(height: 15.h),
            AppTextFormField(
              hintText: 'password',
              icon: Icons.lock,
              obscureText: true,
              suffixIcon: Icon(Icons.remove_red_eye_outlined),
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
                    Text(
                      "ادكرني",
                      style: TextStyle(color: Colors.black45),
                    ),
                  ],
                ),
                InkWell(
                  child: Text(
                    "نسيت كلمة المرور",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            MaterialButton(
              height: 65.h,
              minWidth: double.infinity,
              color: Colors.green,
              onPressed: () {},
              child: Text(
                "تسحيل الدخول",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Wrap(
              children: [
                Text(
                  textDirection: TextDirection.rtl,
                  "أنشاء حساب",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text(
                  "ليس لديك حساب ؟",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(color: Colors.black45),
                ),
              ],
            )
          ],
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
