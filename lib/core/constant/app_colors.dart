import 'package:big_cart/core/Extension/color_extension.dart';
import 'package:flutter/material.dart';

class AppColors {
  static final Color spalshScreenColor = HexColor.fromHex('#A7CA9A');
  static final Color productColor = HexColor.fromHex("#AEDC81");
  static final LinearGradient buttonColor = LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [HexColor.fromHex("#AEDC81"), HexColor.fromHex("#6CC51D")]);
}
