import 'dart:convert';
import 'dart:io';

import 'package:big_cart/core/Functions/check_internet.dart';
import 'package:big_cart/core/enum/status_request.dart';
import 'package:big_cart/main.dart';
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
            headers: {
              HttpHeaders.authorizationHeader:
                  sharedPref.getString('token') ?? ""
            },
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

  Future<Either<StatusRequest, Map>> getData(String linkurl) async {
    // if (await chickIntrnet()) {
    var response = await http.get(
      Uri.parse(linkurl),
      headers: {
        HttpHeaders.authorizationHeader: sharedPref.getString('token') ?? "",
      },
    );
    if (response.statusCode == 200 || response.statusCode == 404) {
      var responsebody = await jsonDecode(response.body);
      return Right(responsebody);
    } else {
      return left(StatusRequest.serverfailure);
    }
    // } else {
    //   return left(StatusRucust.offlinefaliure);
    // }
  }
}
