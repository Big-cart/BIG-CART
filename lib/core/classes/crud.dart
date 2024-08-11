import 'dart:convert';
import 'dart:io';

import 'package:big_cart/core/Functions/check_internet.dart';
import 'package:big_cart/core/enum/status_request.dart';
import 'package:dartz/dartz.dart';
// import 'package:heal_me/Core/Class/status_request.dart';
// import 'package:heal_me/Core/Functions/check_internet.dart';
import 'package:http/http.dart' as http;

class Crud {
  // late final String token;
  Future<Either<StatusRequest, Map>> postData(String linkUrl, Map data) async {
    try {
      if (await checkInternet()) {
        var response = await http.post(
            Uri.parse(
              linkUrl,
            ),
            // headers: {
            //   HttpHeaders.authorizationHeader:""
            // },
            body: data);

        if (response.statusCode >= 200 || response.statusCode != 404) {
          Map responseBody = jsonDecode(
            response.body,
          );
          return Right(responseBody);
        } else {
          return const Left(StatusRequest.serverfailure);
        }
      } else {
        return const Left(StatusRequest.offlinefailure);
      }
    } catch (e) {
      return const Left(StatusRequest.serverfailure);
    }
  }
}
