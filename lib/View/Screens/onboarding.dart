import 'package:big_cart/view/Screens/home.dart';
import 'package:big_cart/view/Screens/pages/page.dart';
import 'package:big_cart/view/Screens/pages/page_1.dart';
import 'package:big_cart/view/Screens/pages/page_2.dart';
import 'package:big_cart/view/Screens/pages/page_3.dart';
import 'package:big_cart/view/Screens/pages/page_4.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

PageController _controller = PageController();

class _OnboardingState extends State<Onboarding> {
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 3);
            });
          },
          children: 
           [
            Page1(),
            Page2(),
            Page3(),
            Page4(),
          ],
        ),
        Container(
          alignment: Alignment(0, 0.75),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  _controller.jumpToPage(1);
                },
                child: Text('skip'),
              ),
              SmoothPageIndicator(controller: _controller, count: 3),
              onLastPage
                  ? GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Home();
                         },
                        ),
                       );
                      },
                      child: Text('done'),
                    )
                  : GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      },
                      child: Text('next'),
                    ),


                    
            ],
          ),
        )
      ],
    ));
  }
}
