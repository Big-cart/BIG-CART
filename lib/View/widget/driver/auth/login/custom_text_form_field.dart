import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormFieldDriver extends StatelessWidget {
  final String hintText;
  final Icon? icon;
  final bool? isPass;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  const CustomTextFormFieldDriver({super.key, required this.hintText,required this.icon,  this.isPass=false, this.controller, this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: isPass==true? true:false,
      style: TextStyle(color: Colors.black, fontSize: 14.sp),
      decoration: InputDecoration(

        contentPadding: EdgeInsets.only(top: 5.h, right: 10.w),
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.bodySmall,
        hintTextDirection: TextDirection.rtl,
        prefixIcon: icon,
        suffixIcon: isPass==true? const Icon(Icons.visibility_off):null,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
