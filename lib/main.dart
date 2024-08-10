import 'package:big_cart/View/Screens/Auth/SelectionScreen.dart';

// import 'package:big_cart/View/Screens/favorite.dart';
// import 'package:big_cart/View/Screens/home.dart';
import 'package:big_cart/View/Screens/Auth/login.dart';
import 'package:big_cart/View/Screens/Users_View/cow_screen.dart';
import 'package:big_cart/View/Screens/Users_View/rate.dart';
import 'package:big_cart/View/Screens/Users_View/home.dart';
import 'package:big_cart/View/Screens/Users_View/product.dart';
import 'package:big_cart/View/Widgets/categery_product.dart';
import 'package:big_cart/View/Screens/Users_View/cart.dart';
import 'package:big_cart/View/Screens/onBorading/onboarding.dart';

import 'package:big_cart/core/Theme/theme.dart';
import 'package:big_cart/routes.dart';

import 'package:dartz/dartz.dart';


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
// import 'View/Screens/bigin_prodact.dart';
// import 'View/Screens/shopping_cart.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return ScreenUtilInit(
      designSize: const Size(430, 932),
      splitScreenMode: false,
      enableScaleText: () {
        return false;
      },
      minTextAdapt: true,
      enableScaleWH: () {
        return true;
      },

      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (context, child) {
        return GetMaterialApp(

            builder: (context, child) {
              final originalTextScaleFactor = MediaQuery.of(context).textScaler;
              final boldText = MediaQuery.boldTextOf(context);
              final newMediaQueryData = MediaQuery.of(context).copyWith(
                textScaler: originalTextScaleFactor.clamp(
                  minScaleFactor: 0.8.sp,
                  maxScaleFactor: 1.0.sp,
                ),
                boldText: boldText,
              );
              return MediaQuery(data: newMediaQueryData, child: child!);
            },
            getPages: route,

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
      child: const Login(),

//       child: const Onboarding(),
    );
    // return MaterialApp(
    //   title: 'BIG CART',
    //   home:LoginScreen() ,
    // );
  }
}
