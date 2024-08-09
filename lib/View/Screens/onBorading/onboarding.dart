import 'package:big_cart/View/Screens/Users_View/home.dart';
import 'package:big_cart/View/Screens/onBorading/page_1.dart';
import 'package:big_cart/View/Screens/onBorading/page_2.dart';
import 'package:big_cart/View/Screens/onBorading/page_3.dart';
import 'package:big_cart/View/Screens/onBorading/page_4.dart';
import 'package:big_cart/View/Widgets/app_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  OnboardingState createState() => OnboardingState();
}

PageController _controller = PageController();

List<Widget> pages = [
  const Page1(),
  const Page2(),
  const Page3(),
  const Page4(),
];

class OnboardingState extends State<Onboarding> {
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
            scrollDirection: Axis.horizontal,
            reverse: true,
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 3);
              });
            },
            children: pages),
        Positioned(
          top: 50.h,
          right: 24.w,
          child: SizedBox(
            width: 80.w,
            height: 40.h,
            child: AppButton(
              onPressed: () {
                _controller.jumpToPage(
                  3,
                );
              },
              child: Text(
                'تخطي',
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
          ),
        ),
        Container(
          alignment: const Alignment(0, 0.75),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SmoothPageIndicator(
                controller: _controller,
                count: pages.length,
                textDirection: TextDirection.ltr,
                effect: const SlideEffect(),
              ),
              SizedBox(
                height: 20.h,
              ),
              onLastPage
                  ? Positioned(
                      bottom: 0,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.w),
                        child: AppButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const Home();
                                },
                              ),
                            );
                          },
                          child: Text(
                            "انتقل الى صفحة التسجيل",
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ),
                      ),
                    )
                  : Positioned(
                      bottom: 0,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.w),
                        child: AppButton(
                            onPressed: () {
                              _controller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn,
                              );
                            },
                            child: Text(
                              "التالي",
                              style: Theme.of(context).textTheme.labelMedium,
                            )),
                      ),
                    ),
              SizedBox(
                height: 20.h,
              )
            ],
          ),
        ),
      ],
    ));
  }
}
