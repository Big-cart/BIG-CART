import 'package:big_cart/core/Api/api_link.dart';
import 'package:big_cart/core/classes/crud.dart';

class SignUpData {
  Crud crud;
  SignUpData(this.crud);
  postdata(
    String name,
    String email,
    String password,
    String passwordConfirm,
    String roleId,
  ) async {
    var response = await crud.postData(AppLink.linkSignUp, {
      "name": name,
      "email": email,
      "password": password,
      "password_confirmation": passwordConfirm,
      "role_id": roleId,
    });
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}
