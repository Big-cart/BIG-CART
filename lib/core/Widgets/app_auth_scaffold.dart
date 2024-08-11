import 'package:flutter/material.dart';

class AppAuthScaffold extends StatelessWidget {
  final Widget bottomSheet;
  final Widget child;
  final List<Widget>? actionButton;
  final String title;
  const AppAuthScaffold({
    super.key,
    required this.bottomSheet,
    required this.child,
    required this.title,
    this.actionButton,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        actions: actionButton,
        title: Text(
          title,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        centerTitle: true,
      ),
      bottomSheet: bottomSheet,
      body: child,
    );
  }
}
