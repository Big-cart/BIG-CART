import 'package:big_cart/Bindings/intial_bindings.dart';
import 'package:big_cart/View/Screens/Auth/compelet_pass.dart';
import 'package:big_cart/View/Screens/Auth/forget_pass.dart';
import 'package:big_cart/View/Screens/Auth/sure_psaa.dart';
import 'package:big_cart/View/Screens/Users_View/profile.dart';
import 'package:big_cart/View/Screens/onBorading/page_4.dart';
import 'package:big_cart/core/Routes/app_routes.dart';
import 'package:big_cart/view/Screens/Auth/SelectionScreen.dart';
import 'package:big_cart/view/Screens/Users_View/CatogerProdact.dart';
import 'package:big_cart/view/Screens/Users_View/empty_cart.dart';
import 'package:big_cart/view/Screens/Users_View/invoce.dart';
import 'package:big_cart/view/Screens/Users_View/list_of_orders.dart';
import 'package:big_cart/view/Screens/onBorading/onboarding.dart';
import 'package:big_cart/view/Screens/onBorading/page_1.dart';
import 'package:big_cart/view/Screens/onBorading/page_2.dart';
import 'package:big_cart/view/Screens/onBorading/page_3.dart';

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
  GetPage(
    name: AppRoute.Invoce,
    page: () => const Invoce(),
  ),
  GetPage(
    name: AppRoute.ListOfOrders,
    page: () => const ListOfOrders(),
  ),
  GetPage(
    name: AppRoute.SelectionScreen,
    page: () => const SelectionScreen(),
  ),
  GetPage(
    name: AppRoute.Onboarding,
    page: () => const Onboarding(),
  ),
  GetPage(
    name: AppRoute.Page1,
    page: () => const Page1(),
  ),
  GetPage(
    name: AppRoute.Page2,
    page: () => const Page2(),
  ),
  GetPage(
    name: AppRoute.Page3,
    page: () => const Page3(),
  ),
  GetPage(
    name: AppRoute.Page4,
    page: () => const Page4(),
  ),
  GetPage(
    name: AppRoute.EmptyCart,
    page: () => const EmptyCart(),
  ),
  GetPage(
    name: AppRoute.CatogerProdact,
    page: () => const CatogerProdact(),
  ),
];
