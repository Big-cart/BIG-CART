import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_pixels/image_pixels.dart';

import 'custom_container_counter.dart';
import 'custom_container_delete.dart';

class CustomCardCart extends StatelessWidget {
  final String imageLink;
  final String titleName;
  final String price;
  const CustomCardCart(
      {super.key,
      required this.imageLink,
      required this.titleName,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return ImagePixels(
      imageProvider: AssetImage(
        imageLink,
      ),
      builder: (BuildContext context, ImgDetails img) => Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: MediaQuery.of(context).size.width * .3.h,
                width: MediaQuery.of(context).size.width - 80.0.w,
                decoration: BoxDecoration(

                    // color: Color(0xffF3BDA7),
                    color: img.pixelColorAtAlignment!(Alignment.center)
                        .withAlpha(400),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(33.0.r),
                        topLeft: Radius.circular(33.0.r))),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(titleName),
                    Text("$price ريال "),
                  ],
                )),
              ),
              Positioned(
                  left: -17.0.w,
                  bottom: 0,
                  child: CustomContainerCounter(
                    color: img.pixelColorAtAlignment!(Alignment.center)
                        .withAlpha(700),
                  )),
              Positioned(
                left: 2.w,
                top: -10.h,
                child: const CustomContainerDelete(color: Colors.white),
              ),
              Positioned(
                  right: -10,
                  top: -75,
                  child: Image.asset(
                    imageLink,
                    width: 150.w,
                  )),
            ],
          ),
          SizedBox(
            height: 80.h,
          )
        ],
      ),
    );
  }
}
