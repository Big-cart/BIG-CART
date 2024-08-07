import 'package:big_cart/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final String buttonName;
  final void Function()? onPressed;
  const AppButton({super.key, required this.buttonName, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(gradient: AppColors.buttonColor),
      child: MaterialButton(
        height: 65.h,
        minWidth: double.infinity,
        onPressed: onPressed,
        child: Text(
          buttonName,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
