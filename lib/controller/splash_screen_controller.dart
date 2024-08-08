import 'package:big_cart/View/Screens/login.dart';
import 'package:get/get.dart';

abstract class SplashScreenController extends GetxController{
  goToHome();

}
class SplashScreenControllerImp extends SplashScreenController{
  
  @override
  void onInit() {
    super.onInit();
    goToHome();
  }

  @override
  goToHome()async {
  
    Future.delayed( Duration(milliseconds:900)).then((value) async {
      Get.to(Login());

    });
  }
}