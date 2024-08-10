import 'package:big_cart/Bindings/intial_bindings.dart';
import 'package:big_cart/View/Screens/Auth/compelet_pass.dart';
import 'package:big_cart/View/Screens/Auth/forget_pass.dart';
import 'package:big_cart/View/Screens/Auth/sure_psaa.dart';
import 'package:big_cart/View/Screens/Users_View/profile.dart';
import 'package:big_cart/core/Routes/app_routes.dart';

import 'package:get/get.dart';
import 'package:big_cart/View/Screens/Users_View/favorite.dart';
import 'package:big_cart/View/Screens/Users_View/home.dart';
import 'package:big_cart/View/Screens/Auth/login.dart';
import 'package:big_cart/View/Screens/Users_View/search.dart';
import 'package:big_cart/View/Screens/Auth/signup.dart';

List<GetPage<dynamic>>? route = [
  GetPage(
    name: AppRoute.home,
    page: () => const Home(),
  ),
  GetPage(
    name: AppRoute.signup,
    page: () => const Signup(),
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
    name: AppRoute.login,
    page: () => const Login(),
  ),
  GetPage(
    name: AppRoute.profile,
    page: () => const Profile(),
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
];
