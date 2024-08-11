import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          ' الدفع',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(Icons.notifications, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Transform.rotate(
              angle: 3.14,
              child: const Icon(Icons.arrow_back, color: Colors.black),
            ),
            onPressed: () {},
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // The confirmation message
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.all(20.0),
                child: const Text(
                  'لتأكيد الطلب قم بدفع المبلغ المطلوب عبر الحساب الذي تنتمي إليه',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 60),

            // Payment method logos
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 const SizedBox(width: 20),
                Image.asset(
                  'assets/images/pay1.png',
                  height: 60,
                ),
                const SizedBox(width: 20),
                Image.asset(
                  'assets/images/pay2.png',
                  height: 60,
                ),
                const SizedBox(width: 7),
                Image.asset(
                  'assets/images/pay3.png',
                  height: 60,
                ),
              ],
            ),
            const SizedBox(height: 80),

            // Success message
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(width: 20),
                Icon(Icons.check_circle, color: Colors.red, size: 24),
                Text(
                  'تمت العملية بنجاح',
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
