import 'package:big_cart/View/Screens/Users_View/Driver_View/order.dart';
import 'package:big_cart/View/Screens/Users_View/cart.dart';
import 'package:big_cart/View/Screens/Users_View/favorite.dart';
import 'package:big_cart/View/Screens/Users_View/home.dart';
import 'package:big_cart/View/Screens/Users_View/list_of_orders.dart';
import 'package:big_cart/View/Screens/Users_View/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class BottomNavigationController extends GetxController {
  navigate(int i);
}

class BottomNavigationControllerImp extends BottomNavigationController {
  int index = 0;
  List<Widget> pages = <Widget>[
    const Home(),
    const Favorite(),
    const Cart(),
    const ListOfOrders(),
    const Profile()
  ];
  List<Icon> icons = <Icon>[
    const Icon(
      Icons.person_outline,
      color: Colors.white,
    ),
    const Icon(
      Icons.shopping_cart_checkout_outlined,
      color: Colors.white,
    ),
    const Icon(
      Icons.favorite_border,
      color: Colors.white,
    ),
    const Icon(
      Icons.crop_square_rounded,
      color: Colors.white,
    ),
    const Icon(
      Icons.home_outlined,
      color: Colors.white,
    ),
  ];
  @override
  // int
  int navigate(int i) {
    index = i;
    // pages[index];
    update();
    return index;
  }
}
