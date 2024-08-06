import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BIG CART'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text(
                'ادخل كلمة المرور الجديدة',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'ادخل كلمة المرور الجديدة',
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'تأكيد كلمة المرور',
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: const Text('تأكيد'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: ResetPasswordScreen(),
  ));
}
