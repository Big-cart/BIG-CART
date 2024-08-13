import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildTextField extends StatelessWidget {
  const BuildTextField({
    super.key,
    required this.label,
    required this.icon,
  });

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: TextField(
        decoration: InputDecoration(
          hintText: label,
          prefixIcon: Icon(icon),
          border: UnderlineInputBorder(),
        ),
      ),
    );
  }
}