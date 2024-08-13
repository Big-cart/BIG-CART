
import 'package:flutter/material.dart';

class BiginScreenFarmer extends StatelessWidget {
  const BiginScreenFarmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bigin_screen.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}














