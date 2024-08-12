import 'package:big_cart/controller/users/category_controller.dart';
import 'package:big_cart/controller/users/products_controller.dart';
import 'package:big_cart/core/Api/api_link.dart';
import 'package:big_cart/core/classes/crud.dart';
import 'package:get/get.dart';

class ProductData {
  CategoryControllerImp categoryControllerImp =
      Get.put(CategoryControllerImp());
  ProductsControllerImp productsControllerImp =
      Get.put(ProductsControllerImp());
  Crud crud;
  ProductData(
    this.crud,
  );
  getAllProductData() async {
    // print("${AppLink.linkLogin}${categoryControllerImp.categoryIdQueryParameter}");
    var response = await crud.getData(
      AppLink.linkLogin,
    );
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }

  getSingleProductData(String productIdQueryParameter) async {
    print("${AppLink.linkLogin}$productIdQueryParameter");
    var response = await crud.getData(
      "${AppLink.linkLogin}$productIdQueryParameter",
    );
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }

  getCategoryProductData(String categoryIdQueryParameter) async {
    print("${AppLink.linkLogin}$categoryIdQueryParameter");
    var response = await crud.getData(
      "${AppLink.linkLogin}$categoryIdQueryParameter",
    );
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}
