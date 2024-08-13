import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:big_cart/View/Widgets/category_widget.dart';
import 'package:big_cart/controller/users/category_controller.dart';
import 'package:big_cart/core/Widgets/handling_data_view.dart';

class SelectCategoryScreen extends StatelessWidget {
  const SelectCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // CategoryControllerImp categoryControllerImp =
    //     Get.put(CategoryControllerImp());

    // ProductsControllerImp productsControllerImp =
    //     Get.put(ProductsControllerImp());
 

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
            SizedBox(height: 120.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w),
              child: GetBuilder<CategoryControllerImp>(
                init: CategoryControllerImp(),
                initState: (_) {},
                builder: (controller) {
                  // controller.showAllCategories(context);
                  // controller.statusRequest;
                  return HandlingDataView(
                    acontext: context,
                    statusRequest: controller.statusRequest,
                    widget: GridView.builder(
                      itemCount: controller.data.length ?? 4,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20.0.w,
                        mainAxisSpacing: 20.0.h,
                        childAspectRatio: 0.88.h,
                      ),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return CategoryWidget(
                            onTap:controller.categoryNavigate[index],
                            categoryName: controller.data[index]["name"] ??
                               controller. categoryName[index],
                            categoryImage:controller. categoryImage[index]);
                      },
                      // children: [
                      //   ...List.generate(
                      //     // 4,
                      //     categoryControllerImp.data.length,
                      //     (index) {
                      //       print(categoryControllerImp.data);
                      //       return
                      //     },
                      //   )
                      // ],
                    ),
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
