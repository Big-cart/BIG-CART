import 'package:big_cart/core/Widgets/app_bar_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppScaffold extends StatelessWidget {
  final Widget child;
  final Widget? drawer;
  final bool isPadding;
  final Color? backColor;
  final double? width;
  final Widget? bottomNavigationBar;

  final PreferredSizeWidget? appBar;
  const AppScaffold({
    super.key,
    required this.child,
    this.appBar,
    this.drawer,
    required this.isPadding,
    this.backColor,
    this.bottomNavigationBar,
    this.width,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        bottomNavigationBar: bottomNavigationBar,
        backgroundColor: backColor,
        drawer: drawer,
        extendBodyBehindAppBar: true,
        appBar: appBar,
        body: isPadding == false
            ? child
            : SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width ?? 24.0.w, vertical: 8.h),
                  child: child,
                ),
              ));
  }
}
