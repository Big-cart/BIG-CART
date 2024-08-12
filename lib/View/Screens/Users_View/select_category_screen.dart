import 'package:big_cart/View/Widgets/category_widget.dart';
import 'package:big_cart/controller/users/category_controller.dart';
import 'package:big_cart/controller/users/products_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SelectCategoryScreen extends StatelessWidget {
  const SelectCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ProductsControllerImp productsControllerImp =
        Get.put(ProductsControllerImp());

    final List<String> categoryImage = <String>[
      "assets/images/vegetables.png",
      "assets/images/grains.png",
      "assets/images/fruits.png",
      "assets/images/cheicken.png",
    ];
    final List<String> categoryName = <String>[
      'خضروات',
      'حبوب',
      'فواكة',
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
              child: GetBuilder<CategoryControllerImp>(
                init: CategoryControllerImp(),
                builder: (controller) {
                  controller.showAllCategories(context);
                  return GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    crossAxisSpacing: 20.0.w,
                    mainAxisSpacing: 20.0.h,
                    childAspectRatio: 0.88.h,
                    children: [
                      ...List.generate(
                        4,
                        // controller.data.length,
                        (index) {
                          return CategoryWidget(
                              onTap: () {
                                productsControllerImp.showCategoriesProduct(
                                    context, "$index");
                              },
                              categoryName: controller.data[index]["name"],
                              categoryImage: categoryImage[index]);
                        },
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
