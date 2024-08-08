import 'package:big_cart/View/Widgets/Auth/app_text_form_field.dart';
import 'package:big_cart/core/Widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppAuthScaffold extends StatelessWidget {
  final Widget bottomSheet;
  final Widget child;

  final String title;
  const AppAuthScaffold({
    super.key,
    required this.bottomSheet,
    required this.child,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        title: Text(title),
        centerTitle: true,
      ),
      bottomSheet: bottomSheet,
      body: child,
    );
  }
}
