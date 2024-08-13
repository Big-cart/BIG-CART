
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final VoidCallback onTap;

  const CustomCard(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.description,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width.w * 0.43, // تعديل الحجم ليكون مناسب
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 30.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 10.h),
                blurRadius: 10,
                color: Colors.grey.shade400 // changes position of shadow
                ),
          ],
        ),
        child: Column(
          children: [
            Image.asset(imagePath, height: 80.h), // ضبط حجم الصورة حسب الحاجة
            SizedBox(height: 10.h),
            Text(
              title,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}
