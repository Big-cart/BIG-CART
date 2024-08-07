import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBottomSheet extends StatelessWidget {
  final double height;
  final Widget child;
  final Color? colorBottomSheet;
  const AppBottomSheet(
      {super.key,
      required this.height,
      required this.child,
      this.colorBottomSheet});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
      height: height,
      decoration: BoxDecoration(
          color: colorBottomSheet ?? Colors.grey[200],
          borderRadius:
              BorderRadiusDirectional.vertical(top: Radius.circular(24.r))),
      child: child,
    );
  }
}
