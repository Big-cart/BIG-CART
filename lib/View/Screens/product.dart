import 'package:big_cart/View/Widgets/Auth/app_text_form_field.dart';
import 'package:big_cart/core/Extension/color_extension.dart';
import 'package:big_cart/core/Functions/appbar_fun_as_widget.dart';
import 'package:big_cart/core/Widgets/app_auth_scaffold.dart';
import 'package:big_cart/View/Widgets/app_bottom_sheet.dart';
import 'package:big_cart/View/Widgets/app_button.dart';
import 'package:big_cart/core/Widgets/app_scaffold.dart';
import 'package:big_cart/core/constant/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Product extends StatelessWidget {
  const Product({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return AppAuthScaffold(
      bottomSheet: Container(
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.r),
            boxShadow: [
              BoxShadow(
                  color: AppColors.productColor,
                  blurStyle: BlurStyle.normal,
                  offset: const Offset(0, 0),
                  spreadRadius: 12.h)
            ]),
        child: AppBottomSheet(
            colorBottomSheet: Colors.white,
            height: size.height * 0.56.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: size.width.w * 0.7,
                  padding:
                      EdgeInsets.symmetric(vertical: 16.h, horizontal: 20.w),
                  height: 70.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.r),
                      color: AppColors.productColor),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Text(
                          "ادخل الكمية",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                      const Expanded(
                        flex: 1,
                        child: AppTextFormField(
                          hintText: '1',
                          obscureText: false,
                          keyboradType: TextInputType.number,
                        ),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(24.r)),
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                  child: Column(
                    children: [
                      const Text(
                        'تاريخ الحصاد: 2000\\8\\12\n\n'
                        'قطوف عنب أخضر بشكلها المميز الطازج وطعمها اللذيذ وهذا بجانب احتوائها على العديد من الفيتامينات والعناصر المغذية لصحة الجسم والبشرة.\n\n'
                        'السعرات الحرارية: 76.72 سعره حرارية لكل 100 جرام\n\n'
                        'السعر 1000 للكيلو',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(5, (index) {
                          return Icon(
                            index < 4 ? Icons.star : Icons.star_border,
                            color: Colors.amber,
                            size: 40.sp,
                          );
                        }),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: AppButton(
                        child: Icon(
                          CupertinoIcons.heart,
                          size: 30.sp,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    VerticalDivider(
                      width: 10.w,
                    ),
                    Expanded(
                      flex: 4,
                      child: AppButton(
                        child: Text(
                          "اضافه لسله",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
      title: "اسم المنتج",
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            child: Container(
              height: 300.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: AppColors.productColor, spreadRadius: 10)
                  ],
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(size.longestSide.r))),
              // child: const CircleAvatar(
              //   radius: double.infinity,
              //   backgroundColor: Colors.white,
              // ),
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
        ],
      ),
    );
  }
}
