import 'package:big_cart/View/Screens/Users_View/Auth/login.dart';
import 'package:big_cart/View/Screens/Users_View/home.dart';
import 'package:big_cart/View/Screens/onBorading/onborading_page_view.dart';
// import 'package:big_cart/View/Screens/login.dart';
import 'package:get/get.dart';

abstract class CowSplashScreen extends GetxController {
  goToHome();
}

class CowSplashScreenImp extends CowSplashScreen {
  @override
  void onInit() {
    super.onInit();
    goToHome();
  }

  @override
  goToHome() async {
    Future.delayed(const Duration(milliseconds: 900)).then((value) async {
      Get.to(const Home());
    });
  }
}
