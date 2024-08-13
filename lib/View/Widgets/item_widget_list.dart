import 'package:big_cart/View/Widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemWidgetList extends StatelessWidget {
  final int index;
  final ScrollPhysics? scrollPhysics;
  final List<String> itemName;
  final String itemImage;

  const ItemWidgetList(
      {super.key,
      required this.index,
      required this.itemName,
      required this.itemImage,
      this.scrollPhysics});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        physics: scrollPhysics ?? NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        semanticChildCount: 2,
        crossAxisCount: 2,
        crossAxisSpacing: 15.0.w,
        mainAxisSpacing: 26.0.h,
        childAspectRatio: 0.75,
        children: [
          ...List.generate(index, (i) {
            return ItemWidget(
              itemPrice: " 5000 الف ريال ",
              index: i,
              itemName: itemName[i],
              imageName: "assets/images/grape$i.png",
            );
          })
        ],
      ),
    );
  }
}
