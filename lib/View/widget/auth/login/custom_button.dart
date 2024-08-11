import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      minWidth: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.width * 0.1,
      color: const Color(0xffC2DEA8),
      onPressed: onPressed,
      child: FittedBox(
          child: Text(
        text,
        style: const TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
      )),
    );
  }
}
