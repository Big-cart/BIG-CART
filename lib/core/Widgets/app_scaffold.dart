import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final bool useAppBar;
  final Widget child;
  final PreferredSizeWidget? appBar;
  const AppScaffold(
      {super.key, required this.useAppBar, required this.child, this.appBar});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: child,
    );
  }
}
