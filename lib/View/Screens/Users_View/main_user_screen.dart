import 'package:big_cart/View/Widgets/app_bottom_navigation.dart';
import 'package:big_cart/controller/home/bottom_navigation_controller.dart';
import 'package:big_cart/core/Widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainUserScreen extends StatelessWidget {
  const MainUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavigationControllerImp controller =
        Get.put(BottomNavigationControllerImp());
    return GetBuilder<BottomNavigationControllerImp>(
      init: BottomNavigationControllerImp(),
      builder: (controller) {
        return AppScaffold(
            bottomNavigationBar: AppBottomNavigation(
                index: controller.index,
                pages: controller.pages,
                icons: controller.icons),
            isPadding: false,
            child: controller.pages
                .elementAt(controller.navigate(controller.index)));
      },
    );
  }
}
