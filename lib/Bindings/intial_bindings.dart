import 'package:big_cart/core/classes/crud.dart';
import 'package:get/get.dart';

class IntialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
  }
}
