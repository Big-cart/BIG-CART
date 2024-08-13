import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../widget/driver/track/custom_container.dart';

class AcceptOrder extends StatelessWidget {
  const AcceptOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        clipBehavior: Clip.none,
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/background.png",
            ),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            clipBehavior: Clip.none,
            child: Column(
              children: [
                AppBar(
                  actions: const [
                    Icon(
                      Icons.arrow_forward_rounded,
                      color: Colors.black,
                    )
                  ],
                  centerTitle: true,
                  backgroundColor: Colors.transparent,
                  elevation: 0.0,
                  title: const Text("قبول الطلب "),
                ),
                Card(
                  color: Colors.white,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 24.0.w, vertical: 8.0.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomContainer(
                          icon: Icons.person_outline_outlined,
                          text: 'اسم الموصل',
                        ),
                        CustomContainer(
                          icon: Icons.hexagon_outlined,
                          text: 'من المزرعة ',
                        ),
                        CustomContainer(
                          icon: Icons.library_add_check_outlined,
                          text: 'تأكيد الطلب',
                        ),
                        CustomContainer(
                          icon: Icons.fire_truck,
                          text: 'تم الشحن',
                        ),
                        CustomContainer(
                          icon: Icons.trending_up_sharp,
                          text: 'خارج  لتوصيل ',
                          check: false,
                        ),
                        CustomContainer(
                          icon: Icons.check_circle_outline,
                          text: 'تسليم الطلب',
                          last: true,
                          check: false,
                        ),
                        SizedBox(
                          height: 16.0.h,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
