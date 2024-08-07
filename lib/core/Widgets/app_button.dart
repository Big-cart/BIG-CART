import 'package:big_cart/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final Widget child;
  final void Function()? onPressed;
  const AppButton({super.key, required this.child, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.r),
          gradient: AppColors.buttonColor),
      child: MaterialButton(
        height: 65.h,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
        minWidth: double.infinity,
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
