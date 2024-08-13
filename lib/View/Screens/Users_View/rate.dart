import 'package:big_cart/View/Widgets/app_button.dart';
import 'package:big_cart/controller/users/rate_controller.dart';
import 'package:big_cart/core/Widgets/app_scaffold.dart';
import 'package:big_cart/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Rate extends StatelessWidget {
  const Rate({super.key});

  @override
  Widget build(BuildContext context) {
    RateControllerImp controllerImp = Get.put(RateControllerImp());
    return AppScaffold(
      isPadding: false,
      child: Container(
        width: double.infinity.w,
        height: double.infinity.h,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppBar(
                  centerTitle: true,
                  title: Text(
                    'التقييم',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.3.h),
                const Text(
                  'يرجى إعطاء تقييمك عن طريق النقر على النجوم أدناه',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 30.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) {
                    return IconButton(
                      icon: Icon(
                        index < 4 ? Icons.star : Icons.star_border,
                        color: Colors.amber,
                        size: 40.sp,
                      ),
                      onPressed: () {
                        // Handle rating update here
                      },
                    );
                  }),
                ),
                SizedBox(height: 30.h),
                GetBuilder<RateControllerImp>(
                  builder: (controllerImp) {
                    return TextField(
                      key: controllerImp.key1,
                      onTap: () {
                        controllerImp.ensureVisibleOnTextArea(
                            textfieldKey: controllerImp.key1);
                      },
                      cursorColor: Colors.green,
                      maxLines: 5,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        hintText: 'أخبرنا عن تجربتك',
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.productColor,
                              style: BorderStyle.solid,
                              width: 2),
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(100.r)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.productColor,
                              style: BorderStyle.solid,
                              width: 2),
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(100.r)),
                        ),
                        suffixIcon: const Icon(Icons.edit),
                      ),
                    );
                  },
                ),
                SizedBox(height: 30.h),
                AppButton(
                  child: Text(
                    'إرسال',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 30.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
