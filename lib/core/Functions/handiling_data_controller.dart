import 'package:big_cart/core/enum/status_request.dart';

handlingData( response) {
  if (response is StatusRequest) {
    return response;
  } else {

    return StatusRequest.succses;
  }
}
