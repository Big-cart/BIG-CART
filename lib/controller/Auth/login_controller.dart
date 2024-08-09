import 'package:big_cart/core/DataSource/Remote/Auth/login.dart';
import 'package:big_cart/core/Functions/handiling_data_controller.dart';
import 'package:big_cart/core/Routes/app_routes.dart';
import 'package:big_cart/core/constant/app_colors.dart';
import 'package:big_cart/core/enum/status_request.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  goToSignUp();
  loginWithEmail(
    BuildContext context,
  );
}

class LoginControllerImp extends LoginController {
  LoginData loginData = LoginData(Get.find());

  late TextEditingController email;
  late TextEditingController password;
  late GlobalKey<FormState> formkey = GlobalKey();
  bool obsecure = true;
  late final int? role;
  Map<String, dynamic> data = {};

  StatusRequest statusRequest = StatusRequest.loading;

  @override
  goToSignUp() {
    Get.offAllNamed(AppRoute.signup);
  }

  @override
  loginWithEmail(
    BuildContext context,
  ) async {
    update();

    statusRequest = StatusRequest.loading;

    // var formdata = formkey.currentState;
    // if (formdata!.validate()) {
    // wariningDialog(context, 20, statusRequest);

    // ! <login with Mysql>
    var response = await loginData.postdata(
      password.text,
      email.text,
    );

    statusRequest = handlingData(response);

    if (statusRequest == StatusRequest.succses) {
      //?fetch data success than store user data and login
      if (response['success'] == true) {
        print(response['user']);
        data = response['user'];
        Get.defaultDialog(
          titleStyle:
              TextStyle(color: Theme.of(context).textTheme.bodyMedium!.color),
          title: "warning",
          // middleText: response['message'],
        );
        Get.offAllNamed(AppRoute.home);
      } else if (response['message'] != null) {
        //?fetch data field than show alert dialog
        response['message'];
        Get.defaultDialog(
          titleStyle: const TextStyle(color: Colors.red),
          title: "تحذير",
          middleText: response['message'],
        );
        statusRequest = StatusRequest.failure;
      } else if (response['errors']['email'] != null) {
        print(response['errors']);
        Get.defaultDialog(
          titleStyle: const TextStyle(color: Colors.red),
          title: "تحذير",
          middleText: response['errors']['email'][0],
        );
      } else if (response['errors']['password'] != null) {
        print(response['errors']);
        Get.defaultDialog(
          titleStyle: const TextStyle(color: Colors.red),
          title: "تحذير",
          middleText: response['errors']['password'][0],
        );
      }
    }
//! </login with Mysql>
    // } else {}
  }

  @override
  onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
