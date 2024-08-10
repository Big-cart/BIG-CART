// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final String hintText;
  final Icon? icon;
  final Icon? suffixIcon;
  final bool obscureText;
  final TextEditingController? controller;
  final TextInputType? keyboradType;
  const AppTextFormField({
    super.key,
    required this.hintText,
    this.icon,
    this.suffixIcon,
    required this.obscureText,
    this.keyboradType,
    this.controller,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 7.h),
            blurRadius: 10,
            color: Colors.black12,
          )
        ],
        // color: Colors.white,
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboradType,
        obscureText: obscureText,
        cursorHeight: 25.h,
        style: TextStyle(color: Colors.black, fontSize: 14.sp),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 5.h, right: 10.w),
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.bodySmall,
          hintTextDirection: TextDirection.rtl,
          prefixIcon: icon,
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(4.r),
          ),
        ),
      ),
    );
  }
}
