import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:big_cart/controller/users/profile_controller.dart';
import 'package:big_cart/core/Widgets/app_scaffold.dart';
import 'package:big_cart/core/constant/app_colors.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileControllerImp controllerImp = Get.put(ProfileControllerImp());
    return AppScaffold(
      isPadding: false,
      appBar: AppBar(
        elevation: 0,
      ),
      child: Container(
        alignment: Alignment.topCenter,
        clipBehavior: Clip.none,
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  height: 160.h,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 4),
                          blurRadius: 2,
                        ),
                      ],
                      color: AppColors.profileColor,
                      borderRadius: BorderRadius.circular(24.r)),
                ),
                Positioned(
                  top: 80.h,
                  child: GestureDetector(
                    onTap: () {
                      // من هنا يمكنك وضع كود تغيير الصورة
                    },
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                            width: 114.w,
                            height: 124.h,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFF6CC51D),
                                  offset: Offset(0, 4),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: Stack(
                              children: [
                                Center(
                                  child: Icon(
                                    Icons.person_2_rounded,
                                    size: 60.sp,
                                    color: const Color(0xFF6CC51D),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.green,
                                    ),
                                    child: const Icon(
                                      Icons.camera_alt_outlined,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Column(
                          children: [
                            Text(
                              'اسم المستخدم',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              'username@gmail.com',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              "967733333333+",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: 140.h,
                    left: 0,
                    child: Image.asset(
                      "assets/images/Circle.png",
                    )),
                Positioned(
                    right: 70.w,
                    top: 250.h,
                    child: Image.asset("assets/images/Circle1.png")),
              ],
            ),
            SizedBox(height: 150.h),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  clipBehavior: Clip.none,
                  padding: EdgeInsets.only(top: 25.h),
                  height: 460.h,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 4),
                        blurRadius: 2,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(24.r),
                    color: AppColors.profileColor,
                  ),
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(0),
                    shrinkWrap: true,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: controllerImp.tileNavigare[index],
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 24.w,
                        ),
                        leading: Icon(
                          controllerImp.tileIcon[index],
                          size: 30.sp,
                        ),
                        title: Text(
                          controllerImp.tileText[index],
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        tileColor: AppColors.profileColor,
                      );
                    },
                  ),
                ),
                Positioned(
                  top: -20.h,
                  right: 10.w,
                  child: Image.asset("assets/images/Circle2.png"),
                ),
                Positioned(
                    bottom: 5,
                    left: 15.w,
                    child: Image.asset("assets/images/Circle3.png")),
                Positioned(
                    bottom: 55.h,
                    left: 55.w,
                    child: Image.asset("assets/images/Circle4.png"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
