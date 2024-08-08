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
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
      child: SizedBox(
        height: 200.h,
        // decoration: const BoxDecoration(

        //     // color: Colors.green[300],
        //     // borderRadius: BorderRadius.circular(20.0),
        //     ),
        child: ImagePixels.container(
          colorAlignment: Alignment.center,
          imageProvider: AssetImage(
            cardImage,
          ),
          child: Row(
            children: [
              Expanded(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: -20,
                      right: -10,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24.r),
                        child: ImagePixels.container(
                          colorAlignment: Alignment.center,
                          imageProvider: AssetImage(cardImage),
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage(cardImage),
                          ),
                        ),
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
                      right: -50.w,
                      child: Container(
                        height: 170.h,
                        width: 250.w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            alignment: Alignment.centerRight,
                            image: AssetImage(
                              cardImage,
                            ),
                          ),
                        ),
                      ),
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
                        child: Text(cardButtonText,
                            style: const TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
