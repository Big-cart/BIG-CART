// import 'package:big_cart/view/Screens/favorite.dart';
// import 'package:big_cart/view/Screens/home.dart';
// import 'package:big_cart/view/Screens/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color:
            const Color(0xFFDFFFD8), // Background color similar to light green
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'منتجات طازجة',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[800], // Dark green color
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            'تطلع من المزرعة وتجي لبابك',
            style: TextStyle(
              fontSize: 16,
              color: Colors.green[700], // Slightly lighter green color
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Get.to(Favorite());
                // Add your onPressed code here!
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Background color of the button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              child: const Text(
                'اطلب الان',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white, // Text color of the button
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Container(
            height: 150,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/cart.png'), // Replace with your image asset
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
