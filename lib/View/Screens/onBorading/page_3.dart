import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 244, 246, 244),
      child: Stack(
        children: [
          // الصورة كخلفية
          Positioned.fill(
            child: Image.asset(
              'assets/images/markus_spiske_3.jpeg',
              fit: BoxFit.cover, // لجعل الصورة تغطي كامل الخلفية
            ),
          ),
          // النصوص فوق الصورة
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  'شراء فواكة عالية الجودة',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 14, 57, 35), // لجعل النص واضحًا على الخلفية
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 500),
                // يمكنك إضافة المزيد من النصوص أو العناصر هنا إذا لزم الأمر
              ],
            ),
          ),
        ],
      ),
    );
  }
}