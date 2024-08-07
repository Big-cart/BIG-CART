import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar appBar(String title) {
  return AppBar(
    // backgroundColor: Colors.grey[200],
    title: Text(title),
    surfaceTintColor: Colors.tealAccent,
    elevation: 0,
    // leading: Icon(Icons.menu, color: Colors.green),

    actions: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: const CircleAvatar(
          child: Icon(
            Icons.person,
            color: Colors.red,
          ),
        ),
      ),
    ],
  );
}
