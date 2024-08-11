import 'package:big_cart/View/Screens/Users_View/home.dart';
import 'package:big_cart/core/Widgets/app_scaffold.dart';
import 'package:big_cart/core/Widgets/search_bar_widget.dart';
import 'package:big_cart/core/constant/app_icons.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Search extends StatelessWidget {
  static String routeName = '/profile';
  const Search({super.key});
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      isPadding: false,
      appBar: AppBar(
        // leading: const Icon(AppIcons.cupBack),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
        ],
      ),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover)),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SearchBarWidget(),
                  SizedBox(height: 50.h),
                  Text(
                    'سجل البحث',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  SizedBox(height: 30.h),
                  Wrap(
                    spacing: 16.w,
                    children: [
                      'موز',
                      'طماط',
                      'بقرة',
                      'تفاح أخضر',
                      'بن يمني',
                    ]
                        .map(
                          (text) => Chip(
                            shape: const LinearBorder(),
                            side: BorderSide.none,
                            padding: EdgeInsets.symmetric(
                                horizontal: 14.w, vertical: 6.h),
                            label: Text(
                              text,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  SizedBox(height: 50.h),
                  Text(
                    'الإقتراحات',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  SizedBox(height: 30.h),
                  Wrap(
                    spacing: 16.w,
                    children: [
                      'بطاط',
                      'افوكادو',
                      'دجاج بلدي',
                      'دقيق أبيض',
                    ]
                        .map((text) => Chip(
                            shape: const LinearBorder(),
                            side: BorderSide.none,
                            padding: EdgeInsets.symmetric(
                                horizontal: 14.w, vertical: 6.h),
                            label: Text(
                              text,
                              style: Theme.of(context).textTheme.bodyMedium,
                            )))
                        .toList(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
