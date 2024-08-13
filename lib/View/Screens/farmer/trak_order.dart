import 'package:big_cart/View/widget/driver/track/custom_container.dart';
import 'package:big_cart/core/Routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class TrackOrder extends StatelessWidget {
  const TrackOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "إضافة منتجات",
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
              Get.toNamed(AppRoute.sections);
            },
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
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
                  child:
                      Icon(Icons.account_circle, size: 40, color: Colors.green),
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
      backgroundColor: Colors.grey[200],
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bacg1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: const [
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.all(16.0), // Adding margin around the card
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 12.0), // Adjust padding for spacing
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomContainer(
                          icon: Icons.person_outline_outlined,
                          text: 'اسم الموصل',
                        ),
                        SizedBox(height: 1.0), // Reduced spacing between items
                        CustomContainer(
                          icon: Icons.hexagon_outlined,
                          text: 'من المزرعة',
                        ),
                        SizedBox(height: 1.0),
                        CustomContainer(
                          icon: Icons.library_add_check_outlined,
                          text: 'تأكيد الطلب',
                        ),
                        SizedBox(height: 1.0),
                        CustomContainer(
                          icon: Icons.fire_truck,
                          text: 'تم الشحن',
                        ),
                        SizedBox(height: 1.0),
                        CustomContainer(
                          icon: Icons.trending_up_sharp,
                          text: 'خارج  لتوصيل',
                          check: false,
                        ),
                        SizedBox(height: 1.0),
                        CustomContainer(
                          icon: Icons.check_circle_outline,
                          text: 'تسليم الطلب',
                          last: true,
                          check: false,
                        ),
                        SizedBox(
                            height:
                                10.0), // Increased space at the bottom of the card
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
