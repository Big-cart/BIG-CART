import 'dart:convert';
import 'dart:io';

import 'package:big_cart/core/Api/api_link.dart';
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

  Future<Either<StatusRequest, List<dynamic>>> getData(
    String linkUrl,
  ) async {
    try {
      if (await checkInternet()) {
        var response = await http.get(
          Uri.parse(
            linkUrl,
          ),
          headers: {
            HttpHeaders.authorizationHeader:
                "Bearer 65|FEayynBBBtU0gwyIscx3eQXX2S9F174OljfaiFx1fe786dff"
          },
          // HttpHeaders.authorizationHeader: sharedPref.getString('token') ?? ""
        );
        print("response Crud");
        print(response.statusCode);
        print(response.body.toString());
        if (response.statusCode >= 200 || response.statusCode != 404) {
          List<dynamic> responseBody = jsonDecode(
            response.body,
          );
          print(responseBody);
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
//   Future<Either<StatusRequest, List<Map<String, dynamic>>>> getData(
//       String linkurl) async {
//     try {
//       if (await checkInternet()) {
//         var headersList = {
//           'Accept': '*/*',
//           'Authorization': sharedPref.getString('token') ?? ""
//         };
//         var url = Uri.parse(linkurl);

//         var req = http.Request('GET', url);
//         req.headers.addAll(headersList);

//         var res = await req.send();
//         final resBody = await res.stream.bytesToString();

//         if (res.statusCode >= 200 && res.statusCode < 404) {
//           List<Map<String, dynamic>> responseBody = jsonDecode(resBody);
//           // print();
//           return Right(responseBody);
//         } else {
//           return Left(StatusRequest.serverfailure);
//         }
//         // var response = await http.get(
//         //   Uri.parse(linkurl),
//         //   headers: {
//         //     HttpHeaders.authorizationHeader:
//         //         sharedPref.getString('token') ?? "",
//         //   },

//         // );
//         // if (response.statusCode == 200 || response.statusCode == 404) {
//         //   // response.request('get',url)
//         //   var responsebody = await jsonDecode(response.body);
//         //   return Right(responsebody);
//         // } else {
//         //   return left(StatusRequest.serverfailure);
//         // }
//       } else {
//         return const Left(StatusRequest.offlinefailure);
//       }
//     } catch (e) {
//       return const Left(StatusRequest.serverfailure);
//     }
//     // if (await chickIntrnet()) {

//     // if (response.statusCode >= 200 || response.statusCode != 404) {
//     //   Map responseBody = jsonDecode(
//     //     response.body,
//     //   );
//     //   return Right(responseBody);
//     // } else {
//     //   return const Left(StatusRequest.serverfailure);
//     // }
//     // } else {
//     //   return left(StatusRucust.offlinefaliure);
//     // }
//   }
// }
