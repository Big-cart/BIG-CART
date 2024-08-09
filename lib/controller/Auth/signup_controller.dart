import 'package:big_cart/core/DataSource/Remote/Auth/signup.dart';
import 'package:big_cart/core/Functions/handiling_data_controller.dart';
import 'package:big_cart/core/Routes/app_routes.dart';
import 'package:big_cart/core/constant/app_colors.dart';
import 'package:big_cart/core/enum/status_request.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
  late TextEditingController password;
  late TextEditingController passwordConfirm;
  late String roleId;

  bool obsecure = true;
  bool obsecureconfirm = true;
  StatusRequest statusRequest = StatusRequest.loading;

  @override
  signUpWithEmail(BuildContext context) async {
    update();

    // var formdata = formkey.currentState;
    statusRequest = StatusRequest.loading;
    // if (formdata!.validate()) {
    //   wariningDialog(context, 20, statusRequest);

    // !  signup with mysql
    var response = await signUpData.postdata(
      name.text,
      email.text,
      password.text,
      passwordConfirm.text,
      roleId = "1",
    );

    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.succses) {
      //?fetch data success than store user data and login
      if (response['success'] == true) {
        print(response['user']);
        // data = response['user'];
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
      } else if (response['errors']['name'] != null) {
        print(response['errors']);
        Get.defaultDialog(
          titleStyle: const TextStyle(color: Colors.red),
          title: "تحذير",
          middleText: response['errors']['name'][0],
        );
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
    } else if (statusRequest == StatusRequest.serverfailure) {
      // Get.defaultDialog(
      //   title: "warning",
      //   titleStyle: TextStyle(
      //       fontSize: 18.sp,
      //       color: AppColors.productColor,
      //       fontWeight: FontWeight.bold),
      //   middleText: "Phone Numbet Or Email Already Exist ",
      // );
      print(statusRequest);

      // statusRequest = StatusRequest.failure;
    } else {
      //?fetch data field than show alert dialog

      Get.defaultDialog(
        titleStyle:
            TextStyle(color: Theme.of(context).textTheme.bodyMedium!.color),
        title: "warning",
        middleText: "Email or Password isn't correct",
      );
      statusRequest = StatusRequest.failure;
    }
    update();
  }

  @override
  goToLogIn() {
    Get.offAllNamed(AppRoute.login);
  }

  @override
  void onInit() {
    name = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    passwordConfirm = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    name.dispose;
    email.dispose;
    password.dispose;
    passwordConfirm.dispose;
    super.dispose();
  }
}



