import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainerDelete extends StatelessWidget {
  final Color color;
  const CustomContainerDelete({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0.h,
      width: 40.0.w,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(20.0.r)),
      child: const Icon(
        Icons.delete_forever,
        color: Colors.red,
      ),
    );
  }
}
