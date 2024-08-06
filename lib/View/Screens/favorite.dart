import 'package:big_cart/View/Widgets/search_bar_widget.dart';
import 'package:big_cart/core/Widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Grape> grapes = [
      Grape(
          name: 'عناب خارجي',
          price: '4000',
          // image: 'assets/grape1.png',
          isFavorite: false),
      Grape(
          name: 'عناب عامري',
          price: '5000',
          // image: 'assets/grape2.png',
          isFavorite: true),
      Grape(
          name: 'عناب أسود',
          price: '3000',
          // image: 'assets/grape3.png',
          isFavorite: false),
      Grape(
          name: 'عناب أحمر',
          price: '45000',
          // image: 'assets/grape4.png',
          isFavorite: true),
      Grape(
          name: 'عناب زاقي',
          price: '2500',
          // image: 'assets/grape5.png',
          isFavorite: false),
      Grape(
          name: 'عناب عامري',
          price: '4000',
          // image: 'assets/grape6.png',
          isFavorite: false),
    ];
    return AppScaffold(
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,

        elevation: 0,
        // leading: Icon(Icons.menu, color: Colors.green),

        actions: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: const CircleAvatar(
                  child: Icon(Icons.person, color: Colors.red))),
        ],
      ),
      child: Column(
        children: [
          const SearchBarWidget(),
          SizedBox(
            height: 12.h,
          ),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 2 / 3,
              ),
              itemCount: grapes.length,
              itemBuilder: (ctx, i) => GrapeItem(grapes[i]),
            ),
          ),
        ],
      ),
    );
  }
}

class Grape {
  final String name;
  final String price;
  // final String image;
  final bool isFavorite;

  Grape({
    required this.name,
    required this.price,
    // required this.image,
    required this.isFavorite,
  });
}

class GrapeItem extends StatelessWidget {
  final Grape grape;

  const GrapeItem(this.grape, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      child: Column(
        children: [
          Stack(
            children: [
              const ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                // child: Image.asset(
                //   grape.image,
                //   height: 100,
                //   width: double.infinity,
                //   fit: BoxFit.cover,
                // ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Icon(
                  grape.isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: grape.isFavorite ? Colors.red : Colors.grey,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  grape.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  '${grape.price} ريال',
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.lock),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
