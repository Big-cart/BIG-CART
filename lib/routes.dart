import 'package:big_cart/View/Screens/Users_View/Auth/SelectionScreen.dart';
import 'package:big_cart/View/Screens/Users_View/Auth/compelet_pass.dart';
import 'package:big_cart/View/Screens/Users_View/Auth/forget_pass.dart';
import 'package:big_cart/View/Screens/Users_View/Auth/sure_psaa.dart';
import 'package:big_cart/View/Screens/Users_View/Driver_View/auth/forget_password.dart';
import 'package:big_cart/View/Screens/Users_View/Driver_View/auth/login_driver.dart';
import 'package:big_cart/View/Screens/Users_View/Driver_View/auth/reset_password.dart';
import 'package:big_cart/View/Screens/Users_View/Driver_View/auth/success_reset_pass_screen.dart';
import 'package:big_cart/View/Screens/Users_View/Driver_View/order.dart';
import 'package:big_cart/View/Screens/Users_View/aboutme.dart';
import 'package:big_cart/View/Screens/Users_View/main_user_screen.dart';
import 'package:big_cart/View/Screens/Users_View/select_category_screen.dart';
import 'package:big_cart/View/Screens/Users_View/empty_cart.dart';
import 'package:big_cart/View/Screens/Users_View/invoice.dart';
import 'package:big_cart/View/Screens/Users_View/list_of_orders.dart';
import 'package:big_cart/View/Screens/Users_View/profile.dart';
import 'package:big_cart/View/Screens/onBorading/onboarding.dart';
import 'package:big_cart/View/Screens/onBorading/page_1.dart';
import 'package:big_cart/View/Screens/onBorading/page_2.dart';
import 'package:big_cart/View/Screens/onBorading/page_3.dart';
import 'package:big_cart/View/Screens/onBorading/page_4.dart';
import 'package:big_cart/core/Routes/app_routes.dart';

import 'package:get/get.dart';
import 'package:big_cart/View/Screens/Users_View/favorite.dart';
import 'package:big_cart/View/Screens/Users_View/home.dart';
import 'package:big_cart/View/Screens/Users_View/Auth/login.dart';
import 'package:big_cart/View/Screens/Users_View/search.dart';
import 'package:big_cart/View/Screens/Users_View/Auth/signup.dart';

List<GetPage<dynamic>>? route = [
  //==================Auth-User===============================
  GetPage(
    name: AppRoute.userLogin,
    page: () => const Login(),
  ),
  GetPage(
    name: AppRoute.userSignup,
    page: () => const Signup(),
  ),
  GetPage(
    name: AppRoute.surepass,
    page: () => const SurePass(),
  ),
  GetPage(
    name: AppRoute.completpass,
    page: () => const Completpass(),
  ),
  GetPage(
    name: AppRoute.forgetpass,
    page: () => const ForgetPass(),
  ),
//====================Users-Screens===============================
  GetPage(
    name: AppRoute.invoice,
    page: () => const Invoice(),
  ),
  GetPage(
    name: AppRoute.listOfOrders,
    page: () => const ListOfOrders(),
  ),
  GetPage(
    name: AppRoute.selectionScreen,
    page: () => const SelectionScreen(),
  ),
  GetPage(
    name: AppRoute.onboarding,
    page: () => const Onboarding(),
  ),
  GetPage(
    name: AppRoute.page1,
    page: () => const Page1(),
  ),
  GetPage(
    name: AppRoute.page2,
    page: () => const Page2(),
  ),
  GetPage(
    name: AppRoute.page3,
    page: () => const Page3(),
  ),
  GetPage(
    name: AppRoute.page4,
    page: () => const Page4(),
  ),
  GetPage(
    name: AppRoute.emptyCart,
    page: () => const EmptyCart(),
  ),
  GetPage(
    name: AppRoute.selectCategoryScreen,
    page: () => const SelectCategoryScreen(),
  ),
  GetPage(
    name: AppRoute.home,
    page: () => const MainUserScreen(),
  ),

  GetPage(
    name: AppRoute.favorite,
    page: () => const Favorite(),
  ),
  GetPage(
    name: AppRoute.search,
    page: () => const Search(),
  ),

  GetPage(
    name: AppRoute.profile,
    page: () => const Profile(),
  ),
  GetPage(
    name: AppRoute.profile,
    page: () => const Profile(),
  ),
  GetPage(
    name: AppRoute.aboutMe,
    page: () => const AboutMe(),
  ),

//====================Driver-Route===============================
  //====================Auth-Driver===============================
  GetPage(
    name: AppRoute.driverLogin,
    page: () => const LoginDriver(),
  ),
  GetPage(
    name: AppRoute.driverForgetPassword,
    page: () => const ForgetPasswordDriver(),
  ),
  GetPage(
    name: AppRoute.driverResetPass,
    page: () => const ResetPasswordDriver(),
  ),
  GetPage(
    name: AppRoute.driverResetPassSuccess,
    page: () => const SuccessResetPassScreenDriver(),
  ),
  //====================Driver-Screens===============================
  GetPage(
    name: AppRoute.driverOrder,
    page: () => const Order(),
  ),
];
