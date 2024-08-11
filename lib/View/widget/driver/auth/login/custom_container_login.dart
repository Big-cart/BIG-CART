import 'package:flutter/material.dart';

class CustomContainerLogin extends StatelessWidget {
 final Widget child;
  const CustomContainerLogin({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(24.0),
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
          color: const Color(0xffC2DEA8),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(78.0),
              bottomLeft: Radius.circular(78.0),
              bottomRight: Radius.circular(10.0))),
      child: child,
    );
  }
}
