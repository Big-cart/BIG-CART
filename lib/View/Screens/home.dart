import 'package:big_cart/View/Widgets/search_bar_widget.dart';
import 'package:big_cart/core/Functions/appbar_fun_as_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatelessWidget {
  static String home = '/home';
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        backgroundColor: Colors.white,
      ),
      appBar:AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0.w),
        child: Column(
          children: [
            // Search Bar
            const SearchBarWidget(),

            SizedBox(height: 20.0.h),
            // Promotional Banner

            const SizedBox(height: 20.0),
            // Grid of Farms
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                children: [
                  buildFarmItem('مزرعة إيهاب'
                      //  'assets/farm1.jpg'
                      ),
                  buildFarmItem('مزرعة ذكرى'
                      // 'assets/farm2.jpg'
                      ),
                  buildFarmItem('مزرعة مرام'
                      // 'assets/farm3.jpg'
                      ),
                  buildFarmItem('مزرعة أحمد'
                      // 'assets/farm4.jpg'
                      ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: 3, // Set this according to the current tab
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        ],
      ),
    );
  }

  Widget buildFarmItem(
    String name,
    //  String imagePath
  ) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
      ),
      child: Column(
        children: [
          // Expanded(
          //   child: Image.asset(imagePath, fit: BoxFit.cover),
          // ),
          const SizedBox(height: 8.0),
          Text(name, style: const TextStyle(fontSize: 16.0)),
          const SizedBox(height: 8.0),
        ],
      ),
    );
  }
}
