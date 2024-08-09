import 'dart:convert';

import 'package:big_cart/core/Functions/check_internet.dart';
import 'package:big_cart/core/enum/status_request.dart';
import 'package:dartz/dartz.dart';
// import 'package:heal_me/Core/Class/status_request.dart';
// import 'package:heal_me/Core/Functions/check_internet.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkUrl, Map data) async {
    try {
      if (await checkInternet()) {
        var response = await http.post(
            Uri.parse(
              linkUrl,
            ),
            body: data);
        print("respone send");

        if (response.statusCode >= 200 || response.statusCode != 404) {
          print("respone accept");

          Map responseBody = jsonDecode(
            
            response.body,
          );
          return Right(responseBody);
        } else {
          print("respone field");

          return const Left(StatusRequest.serverfailure);
        }
      } else {
        return const Left(StatusRequest.offlinefailure);
      }
    } catch (e) {
      print(e.toString());
      return const Left(StatusRequest.serverfailure);
    }
  }
}
