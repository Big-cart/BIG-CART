import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:big_cart/View/Widgets/build_text_field.dart';

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
              BuildTextField(label: 'اسم', icon: Icons.person),
              BuildTextField(label: 'الايميل', icon: Icons.email),
              BuildTextField(label: 'رقم الهاتف', icon: Icons.phone),
              Spacer(flex: 11), // مسافة أسفل الحقول
            ],
          ),
        ),
      ),
    );
  }
}
