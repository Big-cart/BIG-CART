import 'package:flutter/material.dart';

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'من أنت؟',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 2),
            Text(
              'حدد أي واحد أدناه',
              style: TextStyle(
                color: Colors.green,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 40),
            CustomCard(
              imagePath: 'assets/images/farmer.png', // ضع مسار صورة المزارع هنا
              title: 'مزارع',
              description: 'توريد المنتجات الزراعية للتجار والمستهلكين',
              onTap: () {

              },
            ),
            SizedBox(height: 40),
            CustomCard(
              imagePath: 'assets/images/draiver.png', // ضع مسار صورة المزارع هنا
              title: 'موصل',
              description: 'توصيل الطلبات من الموردين الى التجار والمستهلكين',
              onTap: () {

              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final VoidCallback onTap;

  CustomCard({required this.imagePath, required this.title, required this.description, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(19),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 11,
              blurRadius: 10,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Image.asset(imagePath, height: 80), // ضبط حجم الصورة حسب الحاجة
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height:8),
            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


