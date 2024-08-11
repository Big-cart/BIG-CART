import 'package:big_cart/View/Widgets/category_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectCategoryScreen extends StatelessWidget {
  const SelectCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> categoryImage = <String>[
      "assets/images/vegetables.png",
      "assets/images/fruits.png",
      "assets/images/grains.png",
      "assets/images/cheicken.png",
    ];
    final List<String> categoryName = <String>[
      'خضروات',
      'فواكة',
      'حبوب',
      ' المواشي\n والدواجن',
    ];
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/cat_bacgraond.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 140.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 20.0.w,
                mainAxisSpacing: 20.0.h,
                childAspectRatio: 0.88.h,
                children: [
                  ...List.generate(
                    categoryName.length,
                    (index) {
                      return CategoryWidget(
                          categoryName: categoryName[index],
                          categoryImage: categoryImage[index]);
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
