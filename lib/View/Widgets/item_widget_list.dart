import 'package:big_cart/View/Widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemWidgetList extends StatelessWidget {
  final int index;
  final String itemName;
  final String itemImage;

  const ItemWidgetList(
      {super.key,
      required this.index,
      required this.itemName,
      required this.itemImage});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        semanticChildCount: 2,
        crossAxisCount: 2,
        crossAxisSpacing: 10.0.w,
        mainAxisSpacing: 16.0.h,
        childAspectRatio: 0.68,
        children: [
          ...List.generate(index, (i) {
            return ItemWidget(
              index: i,
              itemName: itemName,
              imageName: "assets/images/grape$i.png",
            );
          })
        ],
      ),
    );
  }
}
