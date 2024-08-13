import 'package:flutter/material.dart';

import 'package:big_cart/View/widget/auth/login/custom_button.dart';
import 'package:big_cart/View/widget/auth/login/custom_success_container.dart';

class SuccessResetPassScreenDriver extends StatelessWidget {
  const SuccessResetPassScreenDriver({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffEEF9E4),
        body: SafeArea(
          child:SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
            children: [
              const Spacer(),
              Image.asset("assets/images/logo.png"),
              const SizedBox(
                height: 20.0,
              ),
              const CustomSuccessContainer(),
              const Spacer(),
              CustomButton(
                onPressed: () {},
                text: "تم",
              ),
              const Spacer(),
            ],
          ),),
        ));
  }
}
