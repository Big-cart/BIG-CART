

import 'package:big_cart/View/Widgets/app_button.dart';
import 'package:big_cart/View/widget/driver/cart/custom_card_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 10.h),
        child: Container(
          height: MediaQuery.of(context).size.width * .2.h,
          width: MediaQuery.of(context).size.width - 80.0.w,
          decoration: const BoxDecoration(

              // color: Color(0xffF3BDA7),
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(33.0),
                  topLeft: Radius.circular(33.0))),
          child: const Center(child: Text("الإجمالي :60000ريال")),
        ),
      ),
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
                  title: const Text("سلة التسوق"),
                ),
                SizedBox(
                  height: 60.h,
                ),
                const CustomCardCart(
                  imageLink: 'assets/images/grape5.png',
                  titleName: ' عنب',
                  price: '1500',
                ),
                const CustomCardCart(
                  imageLink: 'assets/images/banana.png',
                  titleName: 'موز',
                  price: '1500',
                ),
                const CustomCardCart(
                  imageLink: 'assets/images/strawberry.png',
                  titleName: 'فرولة',
                  price: '1500',
                ),
                const CustomCardCart(
                  imageLink: 'assets/images/vocado.png',
                  titleName: 'افكادوا',
                  price: '1500',
                ),
                const CustomCardCart(
                  imageLink: 'assets/images/egg.png',
                  titleName: 'بيض',
                  price: '1500',
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 10.h),
                  child: AppButton(
                    child: Text(
                      "الدفع",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ),
                SizedBox(
                  height: 100.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
