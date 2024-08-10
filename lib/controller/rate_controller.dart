import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class RateController extends GetxController {
  Future<void> ensureVisibleOnTextArea({required GlobalKey textfieldKey});
}

class RateControllerImp extends RateController {
  final GlobalKey key1 = GlobalKey();

  @override
  Future<void> ensureVisibleOnTextArea(
      {required GlobalKey textfieldKey}) async {
    final keyContext = textfieldKey.currentContext;
    if (keyContext != null) {
      await Future.delayed(const Duration(milliseconds: 100)).then(
        (value) => Scrollable.ensureVisible(
          keyContext,
          duration: const Duration(milliseconds: 500),
          curve: Curves.decelerate,
        ),
      );
    }
  }
}
