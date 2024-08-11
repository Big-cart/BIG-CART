import 'package:big_cart/View/Screens/Auth/compelet_pass.dart';
import 'package:big_cart/View/Screens/Auth/forget_pass.dart';
import 'package:big_cart/View/Screens/Auth/sure_psaa.dart';
import 'package:big_cart/View/Screens/Driver_View/auth/forget_password.dart';
import 'package:big_cart/View/Screens/Driver_View/auth/login_driver.dart';
import 'package:big_cart/View/Screens/Driver_View/auth/reset_password.dart';
import 'package:big_cart/View/Screens/Driver_View/auth/success_reset_pass_screen.dart';
import 'package:big_cart/View/Screens/Driver_View/order.dart';
import 'package:big_cart/View/Screens/Users_View/profile.dart';
import 'package:big_cart/core/Routes/app_routes.dart';

import 'package:get/get.dart';
import 'package:big_cart/View/Screens/Users_View/favorite.dart';
import 'package:big_cart/View/Screens/Users_View/home.dart';
import 'package:big_cart/View/Screens/Auth/login.dart';
import 'package:big_cart/View/Screens/Users_View/search.dart';
import 'package:big_cart/View/Screens/Auth/signup.dart';

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
    name: AppRoute.home,
    page: () => const Home(),
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
