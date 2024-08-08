import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12.w),
      height: 200.h,
      decoration: BoxDecoration(
        color: Colors.green[300],
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 20,
            child: Stack(
              clipBehavior: Clip.antiAlias,
              children: [
                Positioned(
                  top: 0.h,
                  right: -170.w,
                  child: Container(
                      height: 250.h,
                      width: 320.w,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.contain,
                              alignment: Alignment.centerRight,
                              image: AssetImage(
                                "assets/images/cart.png",
                              )))),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.0.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  child: Text(
                    'منتجات طازجة',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                Text(
                  'تطلع من المزرعة و تجي لبابك',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                const SizedBox(height: 10.0),
                Padding(
                  padding: EdgeInsets.only(right: 120.0.w),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        alignment: Alignment.center,
                        backgroundColor: Colors.red),
                    child: const Text('اطلب الان',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
