import 'package:big_cart/Bindings/intial_bindings.dart';
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

// import 'package:big_cart/View/Screens/product.dart';
// import 'package:big_cart/View/Screens/profile.dart';
// import 'package:big_cart/View/Screens/search.dart';

import 'package:big_cart/View/Screens/Auth/signup.dart';
import 'package:big_cart/View/Screens/Users_View/empty_cart.dart';
import 'package:big_cart/core/Routes/app_routes.dart';
import 'package:big_cart/core/Theme/theme.dart';
import 'package:big_cart/routes.dart';
import 'package:dartz/dartz.dart';

// import 'package:big_cart/view/Screens/bigin_prodact.dart';
// import 'package:big_cart/view/Screens/shopping_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'View/Screens/splash_screen.dart';

// import 'View/Screens/google_map.dart';
// import 'View/Screens/order.dart';
// import 'View/Screens/order_details.dart';
// import 'View/Screens/splash_screen.dart';
// import 'View/Screens/test.dart';
// import 'View/Screens/track.dart';

import 'package:get/get.dart';

// import 'view/Screens/Users_View/evaluation.dart';

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
            getPages: route,
            locale: const Locale('ar'),
            debugShowCheckedModeBanner: false,
            initialBinding: IntialBindings(),
            title: 'First Method',
            // You can use the library anywhere in the app even in theme
            theme: AppThemes.appLightTheme,
            home:
                // Directionality(textDirection: TextDirection.rtl, child: )
                child!
            //  ),
            );
      },
      child: const Home(),

//       child: const Onboarding(),
    );
    // return MaterialApp(
    //   title: 'BIG CART',
    //   home:LoginScreen() ,
    // );
  }
}
