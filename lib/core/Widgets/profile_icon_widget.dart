import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileIconWidget extends StatelessWidget {
  const ProfileIconWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: const CircleAvatar(
          child: Icon(
            Icons.person,
            color: Colors.red,
          ),
        ),
      ) ;
  }
}

