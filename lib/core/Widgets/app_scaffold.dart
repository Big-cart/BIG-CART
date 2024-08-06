import 'package:big_cart/core/Widgets/app_bar_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppScaffold extends StatelessWidget {
  final Widget child;
  final PreferredSizeWidget? appBar;
  const AppScaffold({super.key, required this.child, this.appBar});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 8.h),
        child: child,
      ),
    );
  }
}
