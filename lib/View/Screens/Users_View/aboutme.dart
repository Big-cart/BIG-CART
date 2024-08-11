import 'package:flutter/material.dart';

class Aboutme extends StatelessWidget {
  const Aboutme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward, color: Colors.black),
            onPressed: () {
             
            },
          ),
        ],
      ),
      extendBodyBehindAppBar: true, 
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/aboutme.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const Spacer(flex:2), // مسافة لرفع المحتوى للأعلى

              const SizedBox(height: 20),
              const Text(
                'نبذه عني',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              _buildTextField(label: 'اسم', icon: Icons.person),
              _buildTextField(label: 'الايميل', icon: Icons.email),
              _buildTextField(label: 'رقم الهاتف', icon: Icons.phone),
              const Spacer(flex: 11), // مسافة أسفل الحقول
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({required String label, required IconData icon}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        decoration: InputDecoration(
          hintText: label,
          prefixIcon: Icon(icon),
          border: const UnderlineInputBorder(),
        ),
      ),
    );
  }
}
