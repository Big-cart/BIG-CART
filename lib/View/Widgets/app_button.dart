import 'package:big_cart/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final Widget? child;
  final String? title;

  final Gradient? buttonColor;
  final double? width;
  final void Function()? onPressed;
  const AppButton(
      {super.key,
      this.child,
      this.onPressed,
      this.width,
      this.buttonColor,
      this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width ?? 0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.r),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 7.h),
              blurRadius: 10,
              color: Colors.black12,
            )
          ],
          // color: Colors.white,
          gradient: buttonColor ?? AppColors.buttonGradientColor),
      child: MaterialButton(
        textColor: Colors.black45,
        height: 65.h,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
        minWidth: double.infinity,
        onPressed: onPressed,
        child: title == null
            ? child
            : Text(
                title!,
                style: Theme.of(context).textTheme.titleLarge,
              ),
      ),
    );
  }
}
