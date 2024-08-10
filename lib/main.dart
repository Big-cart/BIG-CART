import 'package:big_cart/View/Screens/Auth/SelectionScreen.dart';
import 'package:big_cart/View/Screens/cart.dart';

import 'package:big_cart/core/Theme/theme.dart';
import 'package:big_cart/routes.dart';
import 'package:big_cart/view/Screens/Auth/CompletPass.dart';
import 'package:big_cart/view/Screens/Auth/forget_pass.dart';
import 'package:big_cart/view/Screens/Auth/sure_psaa.dart';
import 'package:big_cart/view/Screens/Users_View/CatogerProdact.dart'

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'package:get/get.dart';

import 'View/Screens/Auth/login.dart';
import 'View/Screens/Auth/signup.dart';
import 'View/Screens/Driver_View/google_map.dart';
import 'View/Screens/Driver_View/test.dart';
import 'View/Screens/Users_View/home.dart';
import 'View/Screens/Users_View/profile.dart';
import 'View/Screens/Users_View/search.dart';
import 'View/Screens/bigin_prodact.dart';
import 'View/Screens/shopping_cart.dart';


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
      child: const Signup(),

//       child: const Onboarding(),
    );
    // return MaterialApp(
    //   title: 'BIG CART',
    //   home:LoginScreen() ,
    // );
  }
}
