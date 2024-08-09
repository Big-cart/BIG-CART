import 'package:big_cart/View/Widgets/item_widget.dart';
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
            const SearchBarWidget(),

            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  SizedBox(
                    height: 250.h,
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
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        'موز',
                        'طماط',
                        'بقرة',
                        'تفاح أخضر',
                        'بن يمني',
                      ]
                          .map(
                            (text) => Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14.w, vertical: 20.h),
                              child: Row(
                                children: [
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      ImagePixels.container(
                                        colorAlignment: Alignment.center,
                                        imageProvider: const AssetImage(
                                          "assets/images/grape.png",
                                        ),
                                        child: MaterialButton(
                                          onPressed: () {},
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 14.w, vertical: 6.h),
                                          child: Text(
                                            text,
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleLarge,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: -15.h,
                                        right: -20.w,
                                        child: Image.asset(
                                          "assets/images/banana.png",
                                          width: 50.w,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      semanticChildCount: 2,
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0.w,
                      mainAxisSpacing: 16.0.h,
                      childAspectRatio: 0.68,
                      children: [
                        buildFarmItem(
                            // 'مزرعة إيهاب'
                            //  'assets/farm1.jpg'
                            ),
                        buildFarmItem(
                            // 'مزرعة ذكرى'
                            // 'assets/farm2.jpg'
                            ),
                        buildFarmItem(
                            // 'مزرعة مرام'
                            // 'assets/farm3.jpg'
                            ),
                        buildFarmItem(
                            // 'مزرعة أحمد'
                            // 'assets/farm4.jpg'
                            ),
                        buildFarmItem(
                            // 'مزرعة مرام'
                            // 'assets/farm3.jpg'
                            ),
                        buildFarmItem(
                            // 'مزرعة أحمد'
                            // 'assets/farm4.jpg'
                            ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40.h)
                ],
              ),
            ),
          ]),
        ));
  }

  Widget buildFarmItem(
      // String name,
      // String image,
      //  String imagePath
      ) {
    return const ItemWidget(
        index: 1, itemName: " itemName", imageName: "assets/images/banana.png");
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