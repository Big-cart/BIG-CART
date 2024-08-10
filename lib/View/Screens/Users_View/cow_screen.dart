import 'package:big_cart/View/Widgets/categery_product.dart';
import 'package:flutter/material.dart';

class CowScreen extends StatelessWidget {
  const CowScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const CategreyProdact(
        categreyName: "المواشي و الدواجن",
        categreyImage: "assets/images/caw.png");
  }
}
