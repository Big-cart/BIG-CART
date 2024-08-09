import 'package:big_cart/core/Api/api_link.dart';
import 'package:big_cart/core/classes/crud.dart';

class LoginData {
  Crud crud;
  LoginData(this.crud);
  postdata(
    String password,
    String email,
    
  ) async {
    var response = await crud.postData(AppLink.linkLogin, {
      "password": password,
      "email": email,
    });
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}
