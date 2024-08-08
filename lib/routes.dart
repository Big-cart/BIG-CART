import 'package:big_cart/View/Screens/profile.dart';
import 'package:big_cart/core/Routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:big_cart/View/Screens/favorite.dart';
import 'package:big_cart/View/Screens/home.dart';
import 'package:big_cart/View/Screens/Auth/login.dart';
import 'package:big_cart/View/Screens/search.dart';
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
  // GetPage(
  //   name: AppRoute.product,
  //   page: () => const Product(),
  // ),
];
