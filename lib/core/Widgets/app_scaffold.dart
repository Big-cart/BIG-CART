import 'package:big_cart/core/Widgets/app_bar_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppScaffold extends StatelessWidget {
  final Widget child;
  final Widget? drawer;
  final bool isPadding;
  final Color? backColor;

  final PreferredSizeWidget? appBar;
  const AppScaffold({
    super.key,
    required this.child,
    this.appBar,
    this.drawer,
    required this.isPadding,
    this.backColor,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backColor,
        drawer: drawer,
        extendBodyBehindAppBar: true,
        appBar: appBar,
        body: isPadding == false
            ? SafeArea(child: child)
            : SafeArea(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 8.h),
                  child: child,
                ),
              ));
  }
}
