import 'package:flutter/material.dart';

class Page extends StatelessWidget {
  const Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 88, 217, 92),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 2),
            Image.asset(
              'assets/images/bigin_screen.png',
              width: 350,
              height: 400,
            ),
          ],
        ),
      ),
    );
  }
}
