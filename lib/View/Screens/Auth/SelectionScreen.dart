import 'package:big_cart/View/Screens/Users_View/home.dart';
import 'package:big_cart/core/Widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectionScreen extends StatelessWidget {
  const SelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      isPadding: false,
      appBar: AppBar(),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 90.h),
              Text(
                'من أنت؟',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              SizedBox(height: 5.h),
              Text(
                'حدد أي واحد أدناه',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(height: 80.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomCard(
                    imagePath: "assets/images/farme.png", // ضع مسار صورة المزارع هنا
                    title: 'مورد',
                    description: 'توريد المنتجات الزراعية للتجار والمستهلكين',
                    onTap: () {},
                  ),
                  SizedBox(width: 20.w), // مسافة بين الكرتين
                  CustomCard(
                    imagePath: 'assets/images/clien.png', // ضع مسار صورة العميل هنا
                    title: 'عميل',
                    description: 'شراء المنتجات من المزارعين والموردين',
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(height: 50.h),
              CustomCard(
                imagePath: 'assets/images/draiver.png', // ضع مسار صورة الموصل هنا
                title: 'موصل',
                description: 'توصيل الطلبات من الموردين الى التجار والمستهلكين',
                onTap: () {},
              ),
              const Spacer(),
            ],
          ),
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

  const CustomCard(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.description,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width.w * 0.43, // تعديل الحجم ليكون مناسب
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 30.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 10.h),
                blurRadius: 10,
                color: Colors.grey.shade400 // changes position of shadow
                ),
          ],
        ),
        child: Column(
          children: [
            Image.asset(imagePath, height: 80.h), // ضبط حجم الصورة حسب الحاجة
            SizedBox(height: 10.h),
            Text(
              title,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}
