import 'package:big_cart/View/Screens/Users_View/home.dart';
import 'package:big_cart/View/Widgets/item_widget.dart';
import 'package:big_cart/View/Widgets/search_bar_widget.dart';
import 'package:big_cart/core/Functions/appbar_fun_as_widget.dart';
import 'package:big_cart/core/Widgets/app_scaffold.dart';
// import 'package:big_cart/view/Screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Favorite extends StatelessWidget {
  static String routeName = '/favorite';
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> grapes = <String>[
      'عناب خارجي',
      'عناب عامري',
      'عناب أسود',
      'عناب أحمر',
      'عناب زاقي',
      'عناب عامري',
    ];
    return AppScaffold(
      appBar: AppBar(),
      isPadding: true,
      child: Column(
        children: [
          const SearchBarWidget(),
          SizedBox(
            height: 12.h,
          ),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5.w,
                mainAxisSpacing: 10.h,
                childAspectRatio: 0.75.h,
              ),
              itemCount: grapes.length,
              itemBuilder: (ctx, i) => ItemWidget(
                imageName: "assets/images/grape.png",
                index: i,
                itemName: grapes[i],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
