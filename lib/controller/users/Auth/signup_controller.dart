import 'package:big_cart/core/DataSource/Remote/Auth/signup.dart';
import 'package:big_cart/core/Functions/handiling_data_controller.dart';
import 'package:big_cart/core/Routes/app_routes.dart';
import 'package:big_cart/core/constant/app_colors.dart';
import 'package:big_cart/core/enum/status_request.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignupController extends GetxController {
  signUpWithEmail(BuildContext context);
  goToLogIn();
}

class SignupControllerImp extends SignupController {
  SignUpData signUpData = SignUpData(Get.find());

  // late bool isChecked = false;
  late TextEditingController name;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  late TextEditingController passwordConfirm;
  late String roleId;

  bool obsecure = true;
  bool obsecureconfirm = true;
  StatusRequest statusRequest = StatusRequest.loading;

  @override
  signUpWithEmail(BuildContext context) async {
    Get.defaultDialog(
        titleStyle: TextStyle(color: Colors.black, fontFamily: "Almarai"),
        title: "يرجى الانتظار ",
        content: CircularProgressIndicator(
          color: AppColors.profileColor,
        ));
    // var formdata = formkey.currentState;
    statusRequest = StatusRequest.loading;
    // if (formdata!.validate()) {
    //   wariningDialog(context, 20, statusRequest);

    // !  signup with mysql
    var response = await signUpData.postdata(
      name.text,
      email.text,
      phone.text,
      password.text,
      passwordConfirm.text,
      roleId = "1",
    );

    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.succses) {
      Get.back();
      //?fetch data success than store user data and login
      if (response['success'] == true) {
        // data = response['user'];
        Get.defaultDialog(
          titleStyle:
              TextStyle(color: Theme.of(context).textTheme.bodyMedium!.color),
          title: "warning",
          middleText: response['message'],
        );
        Get.offAllNamed(AppRoute.home);
      } else if (response['message'] != null && response['success'] == false) {
        //?fetch data field than show alert dialog
        response['message'];
        Get.defaultDialog(
          titleStyle: TextStyle(color: Colors.red, fontFamily: "Almarai"),
          title: "تحذير",
          middleText: response['message'],
        );
        statusRequest = StatusRequest.failure;
      } else if (response['errors']['name'] != null) {
        Get.defaultDialog(
          titleStyle: TextStyle(color: Colors.red, fontFamily: "Almarai"),
          title: "تحذير",
          middleText: response['errors']['name'][0],
        );
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
    }
    //?fetch data field than show alert dialog

    else {
      Get.back();
      Get.defaultDialog(
          titleStyle: TextStyle(color: Colors.red, fontFamily: "Almarai"),
          title: "تحذير",
          middleText: "الرجاء التحقق من اتصالك بالانترنت ");
    }
    update();
  }

  @override
  goToLogIn() {
    Get.offAllNamed(AppRoute.userLogin);
  }

  @override
  void onInit() {
    name = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();

    password = TextEditingController();
    passwordConfirm = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    name.dispose;
    email.dispose;
    phone.dispose();
    password.dispose;
    passwordConfirm.dispose;
    super.dispose();
  }
}
