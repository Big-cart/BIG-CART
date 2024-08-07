import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemWidget extends StatelessWidget {
  final int index;
  final String itemName;
  final bool? isFavorite;

  const ItemWidget(
      {super.key,
      required this.index,
      this.isFavorite,
      required this.itemName});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  // Get.to(Home());
                },
                icon: const Icon(
                  CupertinoIcons.heart,
                ),
              )
            ],
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 55.r,
                  backgroundColor: Colors.amberAccent,
                ),
              ),
              Center(
                child: Image.asset(
                  "assets/images/grape$index.png",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          const Spacer(),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    itemName,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Text(
                    " 4000 الف ريال ",
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
              const Icon(CupertinoIcons.bag)
            ],
          )
        ],
      ),
    );
  }
}
