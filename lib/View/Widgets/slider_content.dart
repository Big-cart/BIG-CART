// // ignore_for_file: non_constant_identifier_names

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';

// class SliderContent extends StatelessWidget {
//   final Color cardBackColor;
//   final String cardImage;
//   final String cardMessage;
//   final Color cardMessageColor;
//   final String cardIconMessage;
//   final List<double> cardCircleIconPosition;
//   final Color cardCircleIconColor;
//   final List<double> cardCircleImagePosition;
//   final CrossAxisAlignment cardMessagePosition;
//   final MainAxisAlignment cardIconMessagePosition;
//   final double cardHeight;
//   final void Function()? onPressed;
//   const SliderContent({
//     super.key,
//     required this.cardHeight,
//     required this.cardBackColor,
//     required this.cardImage,
//     required this.cardMessage,
//     required this.cardMessageColor,
//     required this.cardIconMessage,
//     required this.cardCircleIconPosition,
//     required this.cardCircleIconColor,
//     required this.cardCircleImagePosition,
//     required this.cardMessagePosition,
//     required this.cardIconMessagePosition,
//     this.onPressed,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: controller.currentPage == 3 || controller.currentPage == 2
//           ? EdgeInsets.zero
//           : EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(10.r),
//         child: Container(
//           height: cardHeight,
//           width: 350.w,
//           color: cardBackColor,
//           child: SingleChildScrollView(
//             physics: const NeverScrollableScrollPhysics(),
//             child: ElevatedButton(
//               style: ButtonStyle(
//                   elevation: const WidgetStatePropertyAll(0),
//                   backgroundColor:
//                       const WidgetStatePropertyAll(Colors.transparent),
//                   padding: const WidgetStatePropertyAll(EdgeInsets.zero),
//                   shape: WidgetStatePropertyAll(RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12.r)))),
//               onPressed: onPressed,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.symmetric(
//                         vertical: 10.0.h, horizontal: 14.w),
//                     child: Stack(
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.only(
//                             left: cardCircleIconPosition[0].w,
//                             top: cardCircleIconPosition[1].h,
//                             right: cardCircleIconPosition[2].w,
//                             bottom: cardCircleIconPosition[3].h,
//                           ),
//                           child: Stack(
//                             children: [
//                               Icon(Icons.circle_outlined,
//                                   size: 200.sp,
//                                   grade: 20,
//                                   color: cardCircleIconColor
//                                   // ard_circle_icon_color,
//                                   ),
//                               Padding(
//                                 padding: EdgeInsets.only(
//                                     left: cardCircleImagePosition[0],
//                                     right: cardCircleImagePosition[1]),
//                                 child: CircleAvatar(
//                                   radius: 40.r,
//                                   backgroundColor:
//                                       const Color.fromRGBO(255, 255, 255, 0.05),
//                                   backgroundImage: AssetImage(
//                                     cardImage,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Column(
//                           crossAxisAlignment: cardMessagePosition,
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Text(
//                               cardMessage,
//                               style: TextStyle(
//                                   color: cardMessageColor,
//                                   fontSize: 20.sp,
//                                   fontWeight: FontWeight.bold,
//                                   height: 1.5.h),
//                             ),
//                             Padding(
//                               padding:
//                                   EdgeInsets.only(top: 35.0.h, right: 37.w),
//                               child: Row(
//                                 mainAxisAlignment: cardIconMessagePosition,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     cardIconMessage,
//                                     style: TextStyle(
//                                         color: cardMessageColor,
//                                         fontSize: 18.sp,
//                                         fontWeight: FontWeight.bold,
//                                         height: 1),
//                                   ),
//                                   Icon(
//                                     controller.currentPage == 2 ||
//                                             controller.currentPage == 3
//                                         ? Icons.search
//                                         : Icons.arrow_forward,
//                                     color: cardMessageColor,
//                                     applyTextScaling: true,
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
