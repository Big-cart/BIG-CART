import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormFieldAddress extends StatelessWidget {
  final String hintText;
  final Icon? icon;
  final TextEditingController? controller;
  const CustomTextFormFieldAddress({super.key, required this.hintText,required this.icon, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: TextStyle(color: Colors.black, fontSize: 14.sp),
      decoration: InputDecoration(

        contentPadding: EdgeInsets.only(top: 5.h, right: 10.w),
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.bodySmall,
        hintTextDirection: TextDirection.rtl,
        prefixIcon: icon,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
