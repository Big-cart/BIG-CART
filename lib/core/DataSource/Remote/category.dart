import 'package:big_cart/core/Api/api_link.dart';
import 'package:big_cart/core/classes/crud.dart';

class CategoryData {
  Crud crud;
  CategoryData(this.crud);
  getdata() async {
    var response = await crud.getData(
      AppLink.linkLogin,
    );
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}
