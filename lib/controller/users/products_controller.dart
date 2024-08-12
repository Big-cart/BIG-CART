import 'package:big_cart/core/DataSource/Remote/product.dart';
import 'package:big_cart/core/Functions/handiling_data_controller.dart';
import 'package:big_cart/core/Routes/app_routes.dart';
import 'package:big_cart/core/constant/app_colors.dart';
import 'package:big_cart/core/enum/status_request.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ProductsController extends GetxController {
  showCategoriesProduct(BuildContext context,String selectedItemIndex);
}

class ProductsControllerImp extends ProductsController {
  final String productIdQueryParameter = '';
  final String categoryIdQueryParameter = '';

  ProductData productData = ProductData(Get.find());

  // final String categoryIdQueryParameter = '';
  StatusRequest statusRequest = StatusRequest.loading;

  List<Map<String, dynamic>> data = [];

  // ! <login with Mysql>
  @override
  showCategoriesProduct(BuildContext context,String selectedItemIndex) async {
    update();
    Get.defaultDialog(
      titleStyle: TextStyle(color: Colors.black, fontFamily: "Almarai"),
      title: "يرحى الانتظار",
      content: CircularProgressIndicator(
        color: AppColors.profileColor,
      ),
    );
    statusRequest = StatusRequest.loading;

    // var formdata = formkey.currentState;
    // if (formdata!.validate()) {
    // wariningDialog(context, 20, statusRequest);

    var response = await productData.getCategoryProductData(selectedItemIndex);

    statusRequest = handlingData(response);
    // print("$statusRequest");
    if (statusRequest == StatusRequest.succses) {
      Get.back();
      //?fetch data success than store user data and login
      if (response['id'] != null) {
        // print(response['role_id']);
        // if (response['role_id'] == 1) {
        data = response;
        // print("${response['token']}");

        Get.defaultDialog(
          titleStyle:
              TextStyle(color: Theme.of(context).textTheme.bodyMedium!.color),
          title: "تحذير",
          // middleText: response['message'],
        );
        Get.offAllNamed(AppRoute.home);
      } else if (response['message'] != null) {
        Get.defaultDialog(
          titleStyle:
              TextStyle(color: Theme.of(context).textTheme.bodyMedium!.color),
          title: "تحذير",
          middleText: response['message'],
        );
      }
    } else {
      Get.defaultDialog(
        titleStyle:
            TextStyle(color: Theme.of(context).textTheme.bodyMedium!.color),
        title: "تحذير",
        middleText: "يرجئ التحقق من جودة اتصال الانترنت",
      );
    }

    update();
  }
//! </login with Mysql>
}
