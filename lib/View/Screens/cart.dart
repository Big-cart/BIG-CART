import 'package:big_cart/View/widget/cart/custom_container_delete.dart';
import 'package:flutter/material.dart';

import '../widget/cart/custom_container_counter.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
          child: Column(
            children: [
              AppBar(
                centerTitle: true,
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                title: const Text("سلة التسوق"),
              ),
              const SizedBox(
                height: 120,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.width * .3,
                    width: MediaQuery.of(context).size.width - 80.0,
                    decoration: const BoxDecoration(
                        color: Color(0xffF3BDA7),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(33.0),
                            topLeft: Radius.circular(33.0))),
                    child: const Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("فرولة"),
                        Text("1500ريال "),
                      ],
                    )),
                  ),
                  const Positioned(
                      left: -17.0, bottom: 0, child: CustomContainerCounter()),
                  const Positioned(
                      left: 5, top: -5, child: CustomContainerDelete()),
                  Positioned(
                      right: 0,
                      top: -80,
                      child: Image.asset(
                        "assets/images/strawberry.png",
                        width: 150,
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
