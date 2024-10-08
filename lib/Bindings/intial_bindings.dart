import 'package:big_cart/controller/users/Auth/login_controller.dart';
import 'package:big_cart/controller/users/Auth/signup_controller.dart';
import 'package:big_cart/core/classes/crud.dart';
import 'package:get/get.dart';

class IntialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
    Get.put(LoginControllerImp());
    Get.put(SignupControllerImp());
  }
}
