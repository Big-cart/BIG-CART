import 'package:big_cart/View/widget/user/address/custom_card.dart';
import 'package:big_cart/core/Routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:big_cart/core/Widgets/app_scaffold.dart';
import 'package:get/get.dart';

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
                    imagePath:
                        "assets/images/farme.png", // ضع مسار صورة المزارع هنا
                    title: 'مورد',
                    description: 'توريد المنتجات الزراعية للتجار والمستهلكين',
                    onTap: () {
                      Get.toNamed(AppRoute.loginFarmer);
                    },
                  ),
                  SizedBox(width: 20.w), // مسافة بين الكرتين
                  CustomCard(
                    imagePath:
                        'assets/images/clien.png', // ضع مسار صورة العميل هنا
                    title: 'عميل',
                    description: 'شراء المنتجات من المزارعين والموردين',
                    onTap: () {
                      Get.toNamed(AppRoute.userLogin);
                    },
                  ),
                ],
              ),
              SizedBox(height: 50.h),
              CustomCard(
                imagePath:
                    'assets/images/draiver.png', // ضع مسار صورة الموصل هنا
                title: 'موصل',
                description: 'توصيل الطلبات من الموردين الى التجار والمستهلكين',
                onTap: () {
                  Get.toNamed(AppRoute.driverLogin);
                },
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
