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
  Future<Either<StatusRequest, Map>> postData(String linkUrl, Map data,{String myToken=""}) async {
    try {
      if (await checkInternet()) {
        var response = await http.post(
            Uri.parse(
              linkUrl,
            ),
            headers: {
              HttpHeaders.authorizationHeader:
                  sharedPref.getString('token') ?? myToken
            },
            body: data);

        print("response Crud");
        print(response.statusCode);

        print(response.body.toString());
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


//   Future<Either<StatusRequest, Map>> getData(String linkUrl, {String myToken=""}) async {
//     try {
//       if (await checkInternet()) {
//         var response = await http.get(
//             Uri.parse(
//               linkUrl,
//             ),
//             headers: {
//               HttpHeaders.authorizationHeader:
//               sharedPref.getString('token') ?? myToken
//             },
//            );
// print("response Crud");
// // print(response.l);
// print(response.statusCode);
// print(response.body.toString());
//         if (response.statusCode >= 200 || response.statusCode != 404) {
//           Map responseBody = jsonDecode(
//             response.body,
//           );
//           return Right(responseBody);
//         } else {
//           return const Left(StatusRequest.serverfailure);
//         }
//       } else {
//         return const Left(StatusRequest.offlinefailure);
//       }
//     } catch (e) {
//       print("catch");
//       print("$e");
//       return const Left(StatusRequest.serverfailure);
//
//
//     }
//   }



  Future<Either<StatusRequest, List<Map<String, dynamic>>>> getData(String linkUrl, {String myToken = ""}) async {
    try {
      if (await checkInternet()) {
        var response = await http.get(
          Uri.parse(linkUrl),
          headers: {
            HttpHeaders.authorizationHeader: sharedPref.getString('token') ?? myToken,
          },
        );

        print("response Crud");
        print(response.statusCode);
        print(response.body.toString());

        if (response.statusCode >= 200 && response.statusCode < 300) {
          List<dynamic> responseBody = jsonDecode(response.body);
          List<Map<String, dynamic>> data = List<Map<String, dynamic>>.from(responseBody);
          return Right(data);
        } else {
          return const Left(StatusRequest.serverfailure);
        }
      } else {
        return const Left(StatusRequest.offlinefailure);
      }
    } catch (e) {
      print("catch");
      print("$e");
      return const Left(StatusRequest.serverfailure);
    }
  }
}
