import 'package:big_cart/Bindings/intial_bindings.dart';
import 'package:big_cart/View/Screens/Auth/login.dart';
import 'package:big_cart/View/Screens/Driver_View/track.dart';
import 'package:big_cart/View/Screens/Users_View/aboutme.dart';
import 'package:big_cart/View/Screens/Users_View/cart.dart';
import 'package:big_cart/View/Screens/Users_View/invoice.dart';
import 'package:big_cart/View/Screens/Users_View/select_category_screen.dart';
import 'package:big_cart/View/Screens/Users_View/main_user_screen.dart';
import 'package:big_cart/View/Widgets/splash_category_screen.dart';

import 'package:big_cart/core/Theme/theme.dart';
import 'package:big_cart/routes.dart';
import 'package:big_cart/view/Screens/Driver_View/auth/login_driver.dart';
import 'package:big_cart/view/farmer/Comments.dart';
import 'package:big_cart/view/farmer/Sections.dart';
import 'package:big_cart/view/farmer/trak_order.dart';
import 'package:big_cart/view/farmer/added_offer.dart';
import 'package:big_cart/view/farmer/added_prodact.dart';
import 'package:big_cart/view/farmer/allprodact.dart';
import 'package:big_cart/view/farmer/auth/bigin_screen.dart';
import 'package:big_cart/view/farmer/auth/forget_password.dart';
import 'package:big_cart/view/farmer/auth/login_farmer.dart';
import 'package:big_cart/view/farmer/auth/reset_password.dart';
import 'package:big_cart/view/farmer/auth/success_reset_pass_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get.dart';

import 'View/Screens/Driver_View/order_details.dart';
import 'View/Screens/Users_View/accept_order.dart';
import 'View/Screens/Users_View/address/choose_address.dart';
import 'View/Screens/Users_View/list_of_orders.dart';

late SharedPreferences sharedPref;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPref = await SharedPreferences.getInstance();
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
            initialBinding: IntialBindings(),
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

      child: const TrackOrder(),

//       child: const Onboarding(),
    );
    // return MaterialApp(
    //   title: 'BIG CART',
    //   home:LoginScreen() ,
    // );
  }
}
