import 'package:big_cart/controller/home/bottom_navigation_controller.dart';
import 'package:big_cart/core/constant/app_colors.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBottomNavigation extends StatelessWidget {
  final int index;
  // final void Function(int)? onTap;
  final List<Icon> icons;
  final List<Widget> pages;
  const AppBottomNavigation(
      {super.key,
      required this.index,
      // required this.onTap,
      required this.pages,
      required this.icons});
  @override
  Widget build(BuildContext context) {
    BottomNavigationControllerImp controller =
        Get.put(BottomNavigationControllerImp());
    return CurvedNavigationBar(
      onTap: (value) {
        controller.navigate(value);
      },
      index: index,
      backgroundColor: Colors.transparent,
      // onTap: (int index) {
      //   pages[index];
      // },

      color: AppColors.bottomNavBarColor,

      buttonBackgroundColor: AppColors.bottomNavBarColor,

// Set this according to the current tab
      items: icons,
    );
  }
}
