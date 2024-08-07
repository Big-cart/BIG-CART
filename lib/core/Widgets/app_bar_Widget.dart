import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarWidget extends StatelessWidget {
  final String? title;

  const AppBarWidget({super.key, this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.grey[200],
        surfaceTintColor: Colors.transparent,
        title: Text(title!),
        elevation: 0,
        // leading: Icon(Icons.menu, color: Colors.green),

        actions: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: const CircleAvatar(
                  child: Icon(Icons.person, color: Colors.red))),
        ],
      ),
    );
  }
}
