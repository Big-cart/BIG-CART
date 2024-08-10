import 'package:big_cart/View/Widgets/item_widget.dart';
import 'package:big_cart/core/Widgets/search_bar_widget.dart';
import 'package:big_cart/core/Widgets/app_scaffold.dart';
// import 'package:big_cart/view/Screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          padding: EdgeInsets.symmetric(horizontal: 24.0.w),
          child: Column(
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
                    imageName: "assets/images/grape$i.png",
                    index: i,
                    itemName: grapes[i],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
