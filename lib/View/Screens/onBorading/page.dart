import 'package:flutter/material.dart';

class Page extends StatelessWidget {
  const Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 49, 153, 52),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 2),
            Image.asset(
              'assets/images/big_cart_1.png',
              width: 350,
              height: 400,
            ),
          ],
        ),
      ),
    );
  }
}
