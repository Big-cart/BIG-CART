import 'package:big_cart/View/Widgets/food_type.dart';
import 'package:big_cart/View/Widgets/item_widget.dart';
import 'package:big_cart/View/Widgets/item_widget_List.dart';
import 'package:big_cart/View/Widgets/search_bar_widget.dart';
import 'package:big_cart/View/Widgets/card_widget.dart';
import 'package:big_cart/core/Widgets/app_scaffold.dart';
import 'package:big_cart/core/constant/app_colors.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_pixels/image_pixels.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        isPadding: false,
        drawer: const Drawer(
          backgroundColor: Colors.white,
        ),
        bottomNavigationBar: CurvedNavigationBar(
          index: 3,
          backgroundColor: Colors.transparent,

          color: AppColors.bottomNavBarColor,

          buttonBackgroundColor: AppColors.bottomNavBarColor,

// Set this according to the current tab
          items: const [
            Icon(
              Icons.person_outline,
              color: Colors.white,
            ),
            Icon(
              Icons.shopping_cart_checkout_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
            Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
          ],
        ),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/background.png",
                  ),
                  fit: BoxFit.fill)),
          padding: EdgeInsets.symmetric(horizontal: 8.0.w),
          child: Column(children: [
            // const Drawer(),
            AppBar(
              systemOverlayStyle: const SystemUiOverlayStyle(
                  systemNavigationBarColor: Colors.transparent),
              title: Text(
                "فواكة",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              centerTitle: true,
            ),
            SizedBox(
              height: 40.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.h),
              child: const SearchBarWidget(),
            ),

            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  SizedBox(
                    height: 200.h,
                    child: PageView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        CardWidget(
                            cardImage: "assets/images/strawberry.png",
                            cardTitle: "فواكة طازجة",
                            cardDescription: "لمذاقكم الرفيع",
                            cardButtonText: "اطلب الان"),
                        CardWidget(
                            cardImage: "assets/images/banana.png",
                            cardTitle: "فواكة طازجة",
                            cardDescription: "لمذاقكم الرفيع",
                            cardButtonText: "اطلب الان"),
                      ],
                    ),
                  ),
                  const FoodType(
                      chipImage: "assets/images/grape.png",
                      chipName: [
                        'موز',
                        'طماط',
                        'بقرة',
                        'تفاح أخضر',
                        'بن يمني',
                      ]),
                  SizedBox(height: 10.h),
                  const ItemWidgetList(
                      index: 5,
                      itemName: "itemName",
                      itemImage: "assets/images/grape.png"),
                  SizedBox(height: 40.h)
                ],
              ),
            ),
          ]),
        ));
  }
}
 
    // ClipRRect(
    //   borderRadius: BorderRadius.only(
    //     bottomLeft: Radius.circular(100.r),
    //     bottomRight: Radius.circular(12.r),
    //     topLeft: Radius.circular(20.r),
    //     topRight: Radius.circular(45.r),
    //   ),
    //   child: ImagePixels.container(
    //     imageProvider: const AssetImage("assets/images/strawberry.png"),
    //     colorAlignment: Alignment.center,
    //     child: Column(
    //       children: [
    //         Row(
    //           children: [
    //             MaterialButton(
    //               shape: RoundedRectangleBorder(
    //                 borderRadius: BorderRadius.only(
    //                   bottomLeft: Radius.circular(40.r),
    //                 ),
    //               ),
    //               minWidth: 50.w,
    //               padding:
    //                   EdgeInsets.symmetric(vertical: 12.h, horizontal: 20.w),
    //               color: Colors.white38,
    //               onPressed: () {},
    //               child: const Icon(Icons.shopping_cart_checkout_outlined,
    //                   color: Colors.white),
    //             ),
    //           ],
    //         ),
    //         // Expanded(
    //         //   child: Image.asset(imagePath, fit: BoxFit.cover),
    //         // ),
    //         const SizedBox(height: 8.0),
    //         // const Text("name", style: TextStyle(fontSize: 16.0)),
    //         const SizedBox(height: 8.0),
    //       ],
    //     ),
    //   ),
    // );