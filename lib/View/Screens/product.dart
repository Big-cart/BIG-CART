import 'package:big_cart/core/Extension/color_extension.dart';
import 'package:big_cart/core/Functions/appbar_fun_as_widget.dart';
import 'package:big_cart/core/Widgets/app_auth_scaffold.dart';
import 'package:big_cart/core/Widgets/app_bottom_sheet.dart';
import 'package:big_cart/core/Widgets/app_button.dart';
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
            height: size.height * 0.52.h,
            child: Column(
              children: [
                const Text(
                  'تاريخ الحصاد: 2000\\8\\12\n\n'
                  'قطوف عنب أخضر بشكلها المميز الطازج وطعمها اللذيذ وهذا بجانب احتوائها على العديد من الفيتامينات والعناصر المغذية لصحة الجسم والبشرة.\n\n'
                  'السعرات الحرارية: 76.72 سعره حرارية لكل 100 جرام\n\n'
                  'السعر 1000 للكيلو',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) {
                    return Icon(
                      index < 4 ? Icons.star : Icons.star_border,
                      color: Colors.amber,
                    );
                  }),
                ),
                const Spacer(),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: AppButton(
                        child: const Icon(CupertinoIcons.heart),
                        onPressed: () {},
                      ),
                    ),
                    VerticalDivider(
                      width: 5.w,
                    ),
                    Expanded(
                      flex: 3,
                      child: AppButton(
                        child: const Text("اضافه لسله"),
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
