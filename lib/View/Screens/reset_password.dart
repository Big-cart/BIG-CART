import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Text('مرحباً', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              child: Image.network(
                'https://via.placeholder.com/400x200', // Replace with the actual image URL
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'انشاء حساب',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'إنشاء حساب بسرعة',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  SizedBox(height: 24),
                  _buildTextField(
                    labelText: 'اسم المستخدم',
                    icon: Icons.person,
                  ),
                  SizedBox(height: 16),
                  _buildTextField(
                    labelText: 'رقم الهاتف',
                    icon: Icons.phone,
                  ),
                  SizedBox(height: 16),
                  _buildTextField(
                    labelText: 'البريد الإلكتروني',
                    icon: Icons.email,
                  ),
                  SizedBox(height: 16),
                  _buildTextField(
                    labelText: 'كلمة المرور',
                    icon: Icons.lock,
                    obscureText: true,
                  ),
                  SizedBox(height: 16),
                  _buildTextField(
                    labelText: 'تأكيد كلمة المرور',
                    icon: Icons.lock,
                    obscureText: true,
                  ),
                  SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                      textStyle: TextStyle(fontSize: 16),
                    ),
                    child: Text('تسجيل الدخول'),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('هل لديك حساب بالفعل؟'),
                      TextButton(
                        onPressed: () {},
                        child: Text('تسجيل', style: TextStyle(color: Colors.green)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String labelText,
    required IconData icon,
    bool obscureText = false,
  }) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}