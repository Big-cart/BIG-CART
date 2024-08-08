// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
//
// abstract class OnBoardingController extends GetxController{
//   next();
//   onPageChange(int index);
//
// }
//
// class OnBoardingControllerImp extends OnBoardingController{
//   int currentPage=0;
//   late PageController  pageController;
//   @override
//   next() {
//     currentPage++;
//     if(currentPage>onBoardingList.length-1){
//       myServices.sharedPreferences.setString("step", "1");
//       Get.offAllNamed(AppRoute.login);
//     }else{
//       pageController.animateToPage(currentPage, duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
//     }
//   }
//
//   @override
//   onPageChange(int index) {
//     currentPage=index;
//     update();
//   }
//
//   @override
//   void onInit() {
//     pageController =PageController();
//     super.onInit();
//   }
//
// }