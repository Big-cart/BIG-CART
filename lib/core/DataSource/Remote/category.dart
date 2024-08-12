import 'package:big_cart/controller/users/category_controller.dart';
import 'package:big_cart/core/Api/api_link.dart';
import 'package:big_cart/core/classes/crud.dart';
import 'package:get/get.dart';

class CategoryData {
  Crud crud;
  CategoryData(
    this.crud,
  );
  getdata() async {
    print(AppLink.linkLogin);
    var response = await crud.getData(
      AppLink.linkAllCategories,
    );
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}
