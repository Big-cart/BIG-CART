import 'package:big_cart/view/route/app_routes.dart';
import 'package:get/get.dart';
import 'package:big_cart/View/Screens/favorite.dart';
import 'package:big_cart/View/Screens/home.dart';
import 'package:big_cart/View/Screens/login.dart';
import 'package:big_cart/View/Screens/search.dart';
import 'package:big_cart/View/Screens/signup.dart';
import 'package:big_cart/view/Screens/profile.dart';

List<GetPage<dynamic>>? route = [
  GetPage(
    name: '/home',
    page: () => const Home(),
  ),
  GetPage(
    name: '/signup',
    page: () => const Signup(),
  ),
  GetPage(
    name: '/favorite',
    page: () => const Favorite(),
  ),
  GetPage(
    name: '/search',
    page: () => const Search(),
  ),
  GetPage(
    name: '/login',
    page: () => const Login(),
  ),
  GetPage(
    name: '/profile',
    page: () => const Profile(),
  ),
];
