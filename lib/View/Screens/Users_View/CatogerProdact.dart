import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CatogerProdact extends StatelessWidget {
  const CatogerProdact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/cat_bacgraond.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 140.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 20.0.w,
                mainAxisSpacing: 20.0.h,
                childAspectRatio: 0.88.h,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(24.0.r),
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/images/vegetables.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'خضروات',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(24.0.r),
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/images/fruits.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'فواكة',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(24.0.r),
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/images/grains.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'حبوب',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(24.0.r),
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/images/cheicken.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        ' المواشي والدواجن',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22.0.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
