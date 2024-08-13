import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool? last;
  final bool? check;

  const CustomContainer(
      {super.key,
      required this.text,
      required this.icon,
      this.last = false,
      this.check = true});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 100.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.r),
                  color: check == false
                      ? const Color(0xffF0F0F0)
                      : const Color(0xffA7CA9A),
                ),
                height: 65.0.h,
                width: 65.0.w,
                child: Icon(
                  icon,
                  color:
                      check == false ? const Color(0xffA7CA9A) : Colors.white,
                ),
              ),
              SizedBox(
                width: 25.w,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
          if (last == false)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 29.5.w),
              width: 1.0.w,
              height: MediaQuery.of(context).size.height * 0.08.h,
              color: Colors.black,
            )
        ],
      ),
    );
  }
}
