import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainerLogin extends StatelessWidget {
  final Widget child;
  const CustomContainerLogin({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24.0.w,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 24.0.w),
        // width: MediaQuery.of(context).size.width * 0.8.w,
        decoration: BoxDecoration(
            color: const Color(0xffC2DEA8),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0.r),
                topRight: Radius.circular(78.0.r),
                bottomLeft: Radius.circular(78.0.r),
                bottomRight: Radius.circular(10.0.r))),
        child: child,
      ),
    );
  }
}
