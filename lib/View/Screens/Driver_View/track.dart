import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../../widget/driver/track/custom_container.dart';



class Track extends StatelessWidget {
  const Track({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEEF9E4),
        appBar: AppBar(
          title: Image.asset("assets/images/logo.png",height: 50,),
          centerTitle: true,

          backgroundColor: Color(0xffEEF9E4),
          elevation: 0.0,
        ),
      drawer: const Drawer(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Card(
          color: Colors.white,
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 22.0, vertical: 8.0),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "تتبع المسار",
                  style: TextStyle(color: Colors.black, fontSize: 22.0),
                ),
                SizedBox(height: 24.0,),
                CustomContainer(icon: Icons.note_add_outlined, text: 'الطلب قيد التجهيز',),
                CustomContainer(icon: Icons.hexagon_outlined, text: 'تم الشحن ',),
                CustomContainer(icon: Icons.fire_truck, text: 'الطلب في الطريق',),
                CustomContainer(icon: Icons.check_circle_outline, text: 'تم التسليم',last: true,),

              ],
            ),
          ),
        ),
      ),
    bottomNavigationBar: CurvedNavigationBar(
      buttonBackgroundColor: const Color(0xffA7CA9A),
        backgroundColor: Colors.transparent,
    items: const <Widget>[
    Icon(Icons.favorite_border_outlined, size: 30,color: Color(0xffA7CA9A),),
    Icon(Icons.home_outlined, size: 30,color: Colors.white,),
    Icon(Icons.shopping_cart_outlined, size: 30,color: Color(0xffA7CA9A),),
    ],
    onTap: (index) {
    }

    ));
  }
}
