import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_pixels/image_pixels.dart';

class CardWidget extends StatelessWidget {
  final String cardImage;
  final String cardTitle;
  final String cardDescription;
  final String cardButtonText;
  const CardWidget({
    super.key,
    required this.cardImage,
    required this.cardTitle,
    required this.cardDescription,
    required this.cardButtonText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: ImagePixels(
        defaultColor: Colors.grey,
        imageProvider: AssetImage(
          cardImage,
        ),
        builder: (context, img) {
          return Container(
            decoration: BoxDecoration(
                color: img.pixelColorAtAlignment!(Alignment.center),
                borderRadius: BorderRadius.circular(24.r)),
            child: Row(
              children: [
                Expanded(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: -15,
                        right: -5,
                        child: Image.asset(
                          cardImage,
                          width: 40.w,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 20,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        bottom: 0.h,
                        right: -30.w,
                        child: Container(
                          height: 150.h,
                          width: 180.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              alignment: Alignment.centerRight,
                              image: AssetImage(
                                cardImage,
                              ),
              width: 40.w,

                            ),
                          )
                        ],
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        child: Text(
                          cardTitle,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                      Text(
                        cardDescription,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      SizedBox(height: 30.0.h),
                      Padding(
                        padding: EdgeInsets.only(right: 50.0.w, left: 15.w),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.r)),
                              alignment: Alignment.center,
                              backgroundColor: Colors.grey.shade200),
                          child: Text(cardButtonText,
                              style: const TextStyle(
                                  color: Colors.red,
                                  fontFamily: "Almarai",
                                  fontWeight: FontWeight.w700)),
                        ),

                      ),
                    ],
                  ),
                ),

              ],
            ),
          );
        },
      ),

    );
  }
}
