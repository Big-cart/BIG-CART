import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 244, 246, 244),
      child: Stack(
        children: [
          // الصورة كخلفية
          Positioned.fill(
            child: Image.asset(
              'assets/images/markus_spiske_1.jpeg',
              fit: BoxFit.cover, // لجعل الصورة تغطي كامل الخلفية
            ),
          ),
          // النصوص فوق الصورة
          const Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 90,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(
                        255, 7, 53, 41), // لجعل النص واضحًا على الخلفية
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 120),
                // يمكنك إضافة المزيد من النصوص أو العناصر هنا إذا لزم الأمر
              ],
            ),
          ),
        ],
      ),
    );
  }
}
