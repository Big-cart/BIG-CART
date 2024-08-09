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
      print("====================succses");
      if (response['user'] != null) {
        update();
        Get.defaultDialog(
          title: "warning",
          titleStyle: TextStyle(
              fontSize: 18.sp,
              color: AppColors.productColor,
              fontWeight: FontWeight.bold),
        );
        Get.offAllNamed(AppRoute.login);
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



// ////////////////////////////////////////////////////////////////////////
// // ///
// // /import 'package:flutter/material.dart';
// // import 'package:flutter_screenutil/flutter_screenutil.dart';
// // import 'package:get/get.dart';
// // import 'package:heal_me/Core/Class/status_request.dart';
// // import 'package:heal_me/Core/Colors/colors.dart';
// // import 'package:heal_me/Core/FireBase/Auth/auth_service.dart';
// // import 'package:heal_me/Core/Functions/handiling_data_controller.dart';
// // import 'package:heal_me/Core/Functions/dialog_function.dart';
// // import 'package:heal_me/Core/Routes/app_routes.dart';
// // import 'package:heal_me/Data/DataSource/Remote/Auth/signup.dart';

// abstract class SignUpController extends GetxController {
//   signUpWithEmail(BuildContext context);
//   goToLogIn();
// }

// class SignUpControllerImp extends SignUpController {
//   SignUpData signUpData = SignUpData(Get.find());
//   late bool isChecked = false;
//   late TextEditingController email;
//   late TextEditingController password;
//   late TextEditingController confirmPassword;
//   late TextEditingController fName;
//   late TextEditingController lName;
//   late TextEditingController phone;

//   bool obsecure = true;
//   bool obsecureconfirm = true;
//   StatusRequest statusRequest = StatusRequest.loading;

//   GlobalKey<FormState> formkey = GlobalKey<FormState>();

//   @override
//   signUpWithEmail(BuildContext context) async {
//     var formdata = formkey.currentState;
//     statusRequest = StatusRequest.loading;
//     if (formdata!.validate()) {
//       wariningDialog(context, 20, statusRequest);

//       // !  signup with mysql
//       var response = await signUpData.postdata(
//         fName.text,
//         lName.text,
//         phone.text,
//         password.text,
//         email.text,
//       );

//       statusRequest = handlingData(response);

//       if (statusRequest == StatusRequest.succses) {
//         print("====================succses");
//         if (response['status'] == 'success') {
//           // data.addAll(response['data']);
//           // !  signup with firebase

//           final authService = AuthService();
//           await authService.signUpWithEmailPassword(email.text, password.text);
//           Get.offAllNamed(AppRoute.login);
//         }
//       } else if (statusRequest == StatusRequest.serverfailure) {
//         Get.back();
//         update();
//         Get.defaultDialog(
//           title: "warning",
//           titleStyle: TextStyle(
//               fontSize: 18.sp,
//               color: AppColors.mainColor,
//               fontWeight: FontWeight.bold),
//           middleText: "Phone Numbet Or Email Already Exist ",
//         );
//         print(statusRequest);

//         statusRequest = StatusRequest.failure;
//       } else {
//         //?fetch data field than show alert dialog

//         Get.back();
//         Get.defaultDialog(
//           titleStyle:
//               TextStyle(color: Theme.of(context).textTheme.bodyMedium!.color),
//           title: "warning",
//           middleText: "Email or Password isn't correct",
//         );
//         statusRequest = StatusRequest.failure;
//       }
//       update();
//     }
//   }

//   @override
//   goToLogIn() {
//     Get.offAllNamed(AppRoute.login);
//   }

//   @override
//   void onInit() {
//     fName = TextEditingController();
//     lName = TextEditingController();
//     phone = TextEditingController();
//     email = TextEditingController();
//     password = TextEditingController();
//     confirmPassword = TextEditingController();
//     super.onInit();
//   }

//   @override
//   void dispose() {
//     fName.dispose;
//     lName.dispose;
//     phone.dispose;
//     email.dispose;
//     password.dispose;
//     confirmPassword.dispose;
//     super.dispose();
//   }
// }
