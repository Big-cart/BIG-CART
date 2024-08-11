import 'package:flutter/material.dart';

void showMyBottomSheet(BuildContext context,Widget child) {
  showModalBottomSheet(
    shape: const RoundedRectangleBorder(borderRadius:BorderRadius.only(
      topLeft: Radius.circular(42),
      topRight: Radius.circular(42),
    ) ),
    context: context,
    isScrollControlled: true, // Allows the bottom sheet to expand to full screen
    backgroundColor: const Color(0xffE8F2E0), // Make the background transparent
    builder: (context) => child,
  );
}