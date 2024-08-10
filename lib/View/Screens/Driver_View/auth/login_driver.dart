import 'package:big_cart/View/widget/driver/auth/login/custom_container_login.dart';
import 'package:flutter/material.dart';

import '../../../widget/driver/auth/login/custom_button.dart';
import '../../../widget/driver/auth/login/custom_text_form_field.dart';

class LoginDriver extends StatelessWidget {
  const LoginDriver({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffEEF9E4),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("assets/images/logindriverimage.png"),
                Image.asset("assets/images/logo.png"),
                const SizedBox(height: 20.0,),
                const CustomContainerLogin(
                    child: Column(
                  children: [
                    Text("تسجيل الدخول"),
                    SizedBox(
                      height: 20.0,
                    ),
                    Form(
                        child: Column(
                      children: [
                        CustomTextFormFieldDriver(
                          hintText: 'إسم المستخدم',
                          icon: Icon(Icons.person_pin),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        CustomTextFormFieldDriver(
                          hintText: 'كلمة المرور',
                          icon: Icon(Icons.lock),
                          isPass: true,
                        ),
                      ],
                    )),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text("هل نسيت كلمة المرور؟"),
                  ],
                )),
                const SizedBox(height: 24.0,),
                CustomButton(onPressed: (){}, text: 'تسجيل دخول',)
              ],
            ),
          ),
        ));
  }
}
