import 'package:flutter/material.dart';

class CustomContainerDelete extends StatelessWidget {
  const CustomContainerDelete({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: 40.0,
      decoration: BoxDecoration(
          color: const Color(0xffFDE1DA), borderRadius: BorderRadius.circular(20.0)),
      child: const Icon(
        Icons.delete_forever,
        color: Colors.red,
      ),
    );
  }
}
