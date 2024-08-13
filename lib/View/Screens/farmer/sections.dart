import 'package:big_cart/core/Routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:big_cart/core/Widgets/app_scaffold.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Sections extends StatelessWidget {
  const Sections({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      isPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          " الأقسام",
          style: TextStyle(color: Colors.black),
        ),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                Scaffold.of(context).openDrawer(); // فتح الـ Drawer
              },
            );
          },
        ),
        actions: [
          IconButton(
            icon: Transform.rotate(
              angle: 3.14,
              child: const Icon(Icons.arrow_back, color: Colors.black),
            ),
            onPressed: () {
             
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.green[100],
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: const Text('اسم المزارع'),
                accountEmail: const Text('username@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 73, 62, 62),
                  child: Icon(Icons.account_circle, size: 40, color: Colors.green),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.info),
                title: const Text('نبذة عني'),
                onTap: () {
                  Get.toNamed(AppRoute.aboutMe);
                },
              ),
              ListTile(
                leading: const Icon(Icons.location_on),
                title: const Text('الموقع'),
                onTap: () {
                  // تنفيذ كود عند الضغط
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.exit_to_app),
                title: const Text('تسجيل الخروج'),
                onTap: () {
                  Get.toNamed(AppRoute.loginFarmer);
                },
              ),
            ],
          ),
        ),
      ),
      
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bacg2.png"),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 170.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomCard(
                    imagePath: "assets/images/sec2.png",
                    title: 'العروض',
                    onTap: () {Get.toNamed(AppRoute.addedOffer);},
                  ),
                  SizedBox(width: 20.w),
                  CustomCard(
                    imagePath: 'assets/images/sec1.png',
                    title: 'عرض المنتجات',
                    onTap: () {Get.toNamed(AppRoute.allProdact);},
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomCard(
                    imagePath: "assets/images/sec4.png",
                    title: 'تعليقات المستخدمين',
                    onTap: () {Get.toNamed(AppRoute.comments);},
                  ),
                  SizedBox(width: 20.w),
                  CustomCard(
                    imagePath: 'assets/images/sec3.png',
                    title: 'إضافة المنتجات',
                    onTap: () {Get.toNamed(AppRoute.addedProduct);},
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              CustomCard(
                imagePath: 'assets/images/sec5.png',
                title: 'تتبع طلبات العملاء',
                onTap: () {Get.toNamed(AppRoute.track);},
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
  final VoidCallback onTap;

  const CustomCard(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width.w * 0.43,
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
            Image.asset(imagePath, height: 80.h),
            SizedBox(height: 10.h),
            Text(
              title,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}
