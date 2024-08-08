import 'package:big_cart/View/Widgets/search_bar_widget.dart';
import 'package:big_cart/View/Widgets/card_widget.dart';
import 'package:big_cart/core/Widgets/app_scaffold.dart';
import 'package:big_cart/core/constant/app_colors.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      
        isPadding: true,
        width: 0,
        drawer: const Drawer(
          backgroundColor: Colors.white,
        ),
        appBar: AppBar(),
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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0.w),
          child: Column(children: [
            const SearchBarWidget(),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              height: 250.h,
              child: PageView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CardWidget(
                      cardImage: "assets/images/strawberry.png",
                      cardTitle: "منتجات طازجة",
                      cardDescription: "لمذاقكم الرفيع",
                      cardButtonText: "اطلب الان"),
                  CardWidget(
                      cardImage: "assets/images/banana.png",
                      cardTitle: "منتجات طازجة",
                      cardDescription: "لمذاقكم الرفيع",
                      cardButtonText: "اطلب الان"),
                ],
              ),
            ),
            Expanded(
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                children: [
                  buildFarmItem('مزرعة إيهاب'
                      //  'assets/farm1.jpg'
                      ),
                  buildFarmItem('مزرعة ذكرى'
                      // 'assets/farm2.jpg'
                      ),
                  buildFarmItem('مزرعة مرام'
                      // 'assets/farm3.jpg'
                      ),
                  buildFarmItem('مزرعة أحمد'
                      // 'assets/farm4.jpg'
                      ),
                ],
              ),
            ),
          ]),
        ));
  }

  Widget buildFarmItem(
    String name,
    //  String imagePath
  ) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
      ),
      child: Column(
        children: [
          // Expanded(
          //   child: Image.asset(imagePath, fit: BoxFit.cover),
          // ),
          const SizedBox(height: 8.0),
          Text(name, style: const TextStyle(fontSize: 16.0)),
          const SizedBox(height: 8.0),
        ],
      ),
    );
  }
}
