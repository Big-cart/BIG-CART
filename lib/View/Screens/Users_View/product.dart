import 'package:big_cart/controller/users/products_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_pixels/image_pixels.dart';

import 'package:big_cart/View/Widgets/Auth/app_text_form_field.dart';
import 'package:big_cart/View/Widgets/app_bottom_sheet.dart';
import 'package:big_cart/View/Widgets/app_button.dart';
import 'package:big_cart/core/Widgets/app_auth_scaffold.dart';
import 'package:big_cart/core/constant/app_colors.dart';

class Product extends StatelessWidget {
  final String productName;
  final int quantity;
  final String price;
  final String description;

  const Product(
      {super.key,
      required this.productName,
      required this.quantity,
      required this.price,
      required this.description});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AppAuthScaffold(
      bottomSheet: Container(
        padding: EdgeInsets.zero,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            AppBottomSheet(
              colorBorderBottomSheet: Colors.transparent,
              colorBottomSheet: Colors.white,
              height: size.height * 0.53.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 55.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(24.r)),
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("ريال سعودي $price السغر للكيلو"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(5, (index) {
                                return Icon(
                                  index < 4 ? Icons.star : Icons.star_border,
                                  color: Colors.amber,
                                  size: 30.sp,
                                );
                              }),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Text(
                          'الكمية: $quantity\n\n'
                          'قطوف عنب أخضر بشكلها المميز الطازج وطعمها اللذيذ وهذا بجانب احتوائها على العديد من الفيتامينات والعناصر المغذية لصحة الجسم والبشرة.\n\n'
                          ' الوصف:$description\n',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  AppButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          CupertinoIcons.bag,
                          color: Colors.white,
                        ),
                        VerticalDivider(
                          width: 10.w,
                        ),
                        Text(
                          "اضافه لسله",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            //end of bottom sheet design
            Positioned(
              top: -30,
              child: Container(
                alignment: Alignment.center,
                width: size.width.w * 0.7,
                padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 20.w),
                height: 70.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6.r),
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.productColor,
                        offset: const Offset(0, 5),
                        blurRadius: 0,
                        spreadRadius: 1),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Text(
                        "ادخل الكمية",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                    const Expanded(
                      flex: 1,
                      child: AppTextFormField(
                        hintText: '1',
                        obscureText: false,
                        keyboradType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                left: -50.w,
                bottom: -70.h,
                child: Image.asset("assets/images/leaf.png")),
          ],
        ),
      ),
      // ! end of bottom sheet design with positioned leaf

      title: productName,
      actionButton: [
        IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.heart_fill, color: Colors.red))
      ],
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topCenter,
            children: [
              Positioned(
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(120.r)),
                  child: ImagePixels.container(
                    imageProvider: const AssetImage("assets/images/grape.png"),
                    colorAlignment: Alignment.center,
                    child: SizedBox(
                      height: 300.h,
                      width: double.infinity,

                      // child: const CircleAvatar(
                      //   radius: double.infinity,
                      //   backgroundColor: Colors.white,
                      // ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 120.h,
                child: Image.asset(
                  "assets/images/grape.png",
                  width: 250.w,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  right: -25.w,
                  top: 400.h,
                  child: Image.asset(
                    "assets/images/leaf2.png",
                    fit: BoxFit.fill,
                    width: 100,
                  )),
              Positioned(
                  left: -50.w,
                  top: 100.h,
                  child: Image.asset("assets/images/leaf.png")),
            ],
          ),
        ],
      ),
    );
  }
}
