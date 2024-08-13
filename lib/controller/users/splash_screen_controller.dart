import 'package:big_cart/View/Screens/Users_View/Auth/login.dart';
// import 'package:big_cart/View/Screens/login.dart';
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
  
    Future.delayed( const Duration(milliseconds:900)).then((value) async {
      Get.to(const Login());

    });
  }
}