import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBottomSheet extends StatelessWidget {
  final double height;
  final Widget child;
  final Color? colorBorderBottomSheet;

  final Color? colorBottomSheet;
  const AppBottomSheet(
      {super.key,
      required this.height,
      required this.child,
      this.colorBottomSheet,
      this.colorBorderBottomSheet});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
      height: height,
      decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
                color: colorBorderBottomSheet ??
                    const Color.fromRGBO(173, 207, 140, 0.63),
                width: 8.h),
          ),
          color: colorBottomSheet ?? const Color.fromARGB(150, 238, 238, 238),
          borderRadius:
              BorderRadiusDirectional.vertical(top: Radius.circular(24.r))),
      child: child,
    );
  }
}
