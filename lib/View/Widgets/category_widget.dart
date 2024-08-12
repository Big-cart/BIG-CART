import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryWidget extends StatelessWidget {
  final String categoryName;
  final String categoryImage;
  final void Function()? onTap;

  const CategoryWidget(
      {super.key,
      required this.categoryName,
      required this.categoryImage,
      this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(24.0.r),
          image: DecorationImage(
            image: AssetImage(categoryImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            categoryName,
            style: TextStyle(
              color: Colors.black,
              fontSize: 24.0.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
