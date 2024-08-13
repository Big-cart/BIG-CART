import 'package:flutter/material.dart';
import 'package:gif_view/gif_view.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bacg2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo.png",
              width: 300,
              height: 100,
            ),
            const SizedBox(height: 30),
            GifView.asset(
              "assets/images/onbo2.gif",
              frameRate: 30,
              width: 300,
              height: 300,
            ),
          ],
        ),
      ),
    );
  }
}
