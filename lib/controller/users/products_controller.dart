import 'package:big_cart/View/Screens/Users_View/product.dart';
import 'package:big_cart/controller/users/category_controller.dart';
import 'package:big_cart/core/DataSource/Remote/product.dart';
import 'package:big_cart/core/Functions/handiling_data_controller.dart';
import 'package:big_cart/core/Routes/app_routes.dart';
import 'package:big_cart/core/constant/app_colors.dart';
import 'package:big_cart/core/enum/status_request.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ProductsController extends GetxController {
  // showCategoriesProduct(BuildContext context, String selectedItemIndex);
  showAllProducts();

  showSingleProducts(String queryParam);
}

class ProductsControllerImp extends ProductsController {
  // CategoryControllerImp categoryControllerImp =
  //     Get.put(CategoryControllerImp());
  String productIdQueryParameter = '';
  // String categoryIdQueryParameter = '';

  ProductData productData = ProductData(Get.find());

  // final String categoryIdQueryParameter = '';
  StatusRequest statusRequest = StatusRequest.loading;

  var data = [];
  Map<String, dynamic> singleProductData = {};

  int index = 0;

  // ! <login with Mysql>
  @override
  // showCategoriesProduct(BuildContext context, String selectedItemIndex) async {
  //   categoryIdQueryParameter = "${categoryControllerImp.index}";
  //   update();
  //   Get.defaultDialog(
  //     titleStyle: TextStyle(color: Colors.black, fontFamily: "Almarai"),
  //     title: "يرحى الانتظار",
  //     content: CircularProgressIndicator(
  //       color: AppColors.profileColor,
  //     ),
  //   );
  //   statusRequest = StatusRequest.loading;

  //   // var formdata = formkey.currentState;
  //   // if (formdata!.validate()) {
  //   // wariningDialog(context, 20, statusRequest);

  //   var response = await productData.getCategoryProductData(selectedItemIndex);

  //   statusRequest = handlingData(response);
  //   // print("$statusRequest");
  //   if (statusRequest == StatusRequest.succses) {
  //     Get.back();
  //     //?fetch data success than store user data and login
  //     if (response['id'] != null) {
  //       // print(response['role_id']);
  //       // if (response['role_id'] == 1) {
  //       data = response;
  //       // print("${response['token']}");

  //       Get.defaultDialog(
  //         titleStyle:
  //             TextStyle(color: Theme.of(context).textTheme.bodyMedium!.color),
  //         title: "تحذير",
  //         // middleText: response['message'],
  //       );
  //       Get.offAllNamed(AppRoute.home);
  //     } else if (response['message'] != null) {
  //       Get.defaultDialog(
  //         titleStyle:
  //             TextStyle(color: Theme.of(context).textTheme.bodyMedium!.color),
  //         title: "تحذير",
  //         middleText: response['message'],
  //       );
  //     }
  //   } else {
  //     Get.defaultDialog(
  //       titleStyle:
  //           TextStyle(color: Theme.of(context).textTheme.bodyMedium!.color),
  //       title: "تحذير",
  //       middleText: "يرجئ التحقق من جودة اتصال الانترنت",
  //     );
  //   }

  //   update();
  // }

  showAllProducts() async {
    update();

    // var formdata = formkey.currentState;
    // if (formdata!.validate()) {
    // wariningDialog(_, 20, statusRequest);
    // print("$statusRequest");

    var response = await productData.getAllProductData();
    statusRequest = StatusRequest.loading;
    // print(response);
    statusRequest = handlingData(response);
    // print("$statusRequest");
    if (statusRequest == StatusRequest.succses) {
      // Get.back();
      //?fetch data success than store user data and login
      if (response[0]['id'] != null) {
        data.addAll(response);
        // print(response['role_id']);
        // if (response['role_id'] == 1) {
        // print("${response['token']}");
        // print(data);
      } else if (response['message'] != null) {}
    } else {
      print("object");
    }

    update();
  }

  @override
  showSingleProducts(String queryParam) async {
    update();

    // var formdata = formkey.currentState;
    // if (formdata!.validate()) {
    // wariningDialog(_, 20, statusRequest);
    print("$statusRequest");

    var response = await productData.getSingleProductData(queryParam);
    statusRequest = StatusRequest.loading;
    print(response);
    statusRequest = handlingData(response);
    print("$statusRequest");
    if (statusRequest == StatusRequest.succses) {
      // Get.back();
      //?fetch data success than store user data and login
      if (response['id'] != null) {
        singleProductData = response;
        // print(response['role_id']);
        // if (response['role_id'] == 1) {
        // print("${response['token']}");
        print(response['id']);
        Get.to(
          () => Product(
              productName: singleProductData['name'],
              quantity: response['quantity'],
              price: response['prais'],
              description: response['description']),
        );
        update();

        // Get.offAllNamed(AppRoute.home);
      } else if (response['message'] != null) {}
    } else {
      print("object");
    }

    update();
  }

//! </login with Mysql>
  @override
  onInit() {
    showAllProducts();
    super.onInit();
  }
}
