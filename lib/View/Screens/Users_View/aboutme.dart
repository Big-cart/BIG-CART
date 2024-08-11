import 'package:big_cart/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/aboutme.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              Spacer(flex: 2), // مسافة لرفع المحتوى للأعلى

              SizedBox(height: 20.h),
              Text(
                'نبذه عني',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.h),
              _buildTextField(label: 'اسم', icon: Icons.person),
              _buildTextField(label: 'الايميل', icon: Icons.email),
              _buildTextField(label: 'رقم الهاتف', icon: Icons.phone),
              Spacer(flex: 11), // مسافة أسفل الحقول
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({required String label, required IconData icon}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: TextField(
        decoration: InputDecoration(
          hintText: label,
          prefixIcon: Icon(icon),
          border: UnderlineInputBorder(),
        ),
      ),
    );
  }
}
