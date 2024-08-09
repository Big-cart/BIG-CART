import 'package:big_cart/View/widget/cart/custom_container_delete.dart';
import 'package:flutter/material.dart';
import '../widget/cart/custom_container_counter.dart';

class ShoppingCart extends StatelessWidget {

  const ShoppingCart({super.key});

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
        child: SafeArea(
          child: Column(
            children: [
              AppBar(
                centerTitle: true,
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                leading: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () {
                    // ضع هنا الكود الذي تريد تنفيذه عند الضغط على زر الرجوع
                  },
                ),
                title: const Text("سلة التسوق"),
              ),
              const SizedBox(height: 30),
              // إضافة محتوى الصفحة
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/cart_icon.png', // ضع هنا مسار الصورة
                      width: 300,
                      height: 200,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'سلة التسوق فارغة',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'قم بإضافة المنتجات التي تريدها من صفحة الأقسام',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // ضع هنا الكود الذي تريد تنفيذه عند الضغط على الزر
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 85, 195, 88),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: const Text(
                      'ابدأ التسوق',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
