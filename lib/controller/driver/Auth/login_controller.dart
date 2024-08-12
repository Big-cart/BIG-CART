import 'package:big_cart/core/DataSource/Remote/Auth/login.dart';
import 'package:big_cart/core/Functions/handiling_data_controller.dart';
import 'package:big_cart/core/Routes/app_routes.dart';
import 'package:big_cart/core/constant/app_colors.dart';
import 'package:big_cart/core/enum/status_request.dart';
import 'package:big_cart/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginControllerDriver extends GetxController {
  goToSignUp();
  loginWithEmail(
    BuildContext context,
  );
}

class LoginControllerDriverImp extends LoginControllerDriver {
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
    Get.offAllNamed(AppRoute.userSignup);
  }

  @override
  loginWithEmail(
    BuildContext context,
  ) async {
    statusRequest = StatusRequest.loading;
    Get.defaultDialog(
      titleStyle: TextStyle(color: Colors.black, fontFamily: "Almarai"),
      title: "يرحى الانتظار",
      content: CircularProgressIndicator(
        color: AppColors.profileColor,
      ),
    );

    // var formdata = formkey.currentState;
    // if (formdata!.validate()) {
    // wariningDialog(context, 20, statusRequest);

    // ! <login with Mysql>
    var response = await loginData.postdata(
      password.text,
      email.text,
    );

    statusRequest = handlingData(response);
    print("$statusRequest");
    if (statusRequest == StatusRequest.succses) {
      Get.back();
      //?fetch data success than store user data and login
      print("Sucsses");
      if (response['success'] == true) {
        print(response['role_id']);
        if (response['role_id'] == 2) {
          //!< accept case>

          // store received data
          data = response['user'];
          // make sure that you have token

          print("${response['token']}");

          // store token

          sharedPref.setString(
              "token", "Bearer ${response['token']}".toString());

          // Get.defaultDialog(
          //   titleStyle:
          //       TextStyle(color: Theme.of(context).textTheme.bodyMedium!.color),
          //   title: "تحذير",
          //   // middleText: response['message'],
          // );

          //navigate to the next page

          Get.offAllNamed(AppRoute.driverOrder);

          //!</ accept case>
        } else {
          Get.defaultDialog(
            titleStyle:
                TextStyle(color: Theme.of(context).textTheme.bodyMedium!.color),
            title: "warning",
            middleText: "هذا الحساب ليس حساب سائق",
          );
        }
      } else if (response['message'] != null) {
        //?fetch data field than show alert dialog
        response['message'];
        Get.defaultDialog(
          titleStyle: TextStyle(color: Colors.red, fontFamily: "Almarai"),
          title: "تحذير",
          middleText: response['message'],
        );
        statusRequest = StatusRequest.failure;
      } else if (response['errors']['email'] != null) {
        Get.defaultDialog(
          titleStyle: TextStyle(color: Colors.red, fontFamily: "Almarai"),
          title: "تحذير",
          middleText: response['errors']['email'][0],
        );
      } else if (response['errors']['password'] != null) {
        Get.defaultDialog(
          titleStyle: TextStyle(color: Colors.red, fontFamily: "Almarai"),
          title: "تحذير",
          middleText: response['errors']['password'][0],
        );
      }
    } else {
      Get.back();
      Get.defaultDialog(
          titleStyle: TextStyle(color: Colors.red, fontFamily: "Almarai"),
          title: "تحذير",
          middleText: "الرجاء التحقق من اتصالك بالانترنت ");
    }
//! </login with Mysql>
    update();
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
