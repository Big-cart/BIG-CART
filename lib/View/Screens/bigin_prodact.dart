import 'package:big_cart/View/widget/cart/custom_container_delete.dart';
import 'package:flutter/material.dart';
import '../widget/cart/custom_container_counter.dart';

class BiginProdact extends StatelessWidget {

  const BiginProdact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'المواشي و الدواجن',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Image.asset(
                "assets/images/cawe.png", // ضع مسار الصورة هنا
                width: 300,
                height: 400,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
