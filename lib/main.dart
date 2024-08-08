import 'package:big_cart/View/Screens/Auth/SelectionScreen.dart';
import 'package:big_cart/View/Screens/favorite.dart';
import 'package:big_cart/View/Screens/home.dart';
import 'package:big_cart/View/Screens/Auth/login.dart';
import 'package:big_cart/View/Screens/onBorading/onboarding.dart';
import 'package:big_cart/View/Screens/product.dart';
import 'package:big_cart/View/Screens/profile.dart';
import 'package:big_cart/View/Screens/search.dart';
import 'package:big_cart/View/Screens/Auth/signup.dart';
import 'package:big_cart/core/Theme/theme.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'View/Screens/google_map.dart';
import 'View/Screens/order.dart';
import 'View/Screens/order_details.dart';
import 'View/Screens/splash_screen.dart';
import 'View/Screens/test.dart';
import 'View/Screens/track.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return GetMaterialApp(
            locale: const Locale('ar'),
            debugShowCheckedModeBanner: false,
            title: 'First Method',
            // You can use the library anywhere in the app even in theme
            theme: AppThemes.appLightTheme,
            home:
                // Directionality(textDirection: TextDirection.rtl, child: )
                child!
            //  ),
            );
      },
      child:  const SelectionScreen(),
    );
    // return MaterialApp(
    //   title: 'BIG CART',
    //   home:LoginScreen() ,
    // );
  }
}
