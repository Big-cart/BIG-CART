import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:big_cart/View/Widgets/item_widget_list.dart';
import 'package:big_cart/core/Widgets/app_scaffold.dart';
import 'package:big_cart/core/Widgets/search_bar_widget.dart';

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
      isPadding: false,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                centerTitle: true,
                title: Text(
                  "المفضلة",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              const SearchBarWidget(),
              SizedBox(
                height: 12.h,
              ),
              Expanded(
                child: ItemWidgetList(
                    scrollPhysics: AlwaysScrollableScrollPhysics(),
                    index: grapes.length,
                    itemName: grapes,
                    itemImage: "assets/images/grape.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
