import 'package:flutter/material.dart';

class CustomContainerDelete extends StatelessWidget {final Color color;
  const CustomContainerDelete({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: 40.0,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(20.0)),
      child: const Icon(
        Icons.delete_forever,
        color: Colors.red,
      ),
    );
  }
}
