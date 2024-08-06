import 'package:big_cart/View/Widgets/search_bar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        backgroundColor: Colors.white,
      ),
      appBar: AppBar(
        // backgroundColor: Colors.grey[200],

        elevation: 0,
        // leading: Icon(Icons.menu, color: Colors.green),

        actions: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: const CircleAvatar(
                  child: Icon(Icons.person, color: Colors.red))),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0.w),
        child: Column(
          children: [
            // Search Bar
            SearchBarWidget(),

            SizedBox(height: 20.0.h),
            // Promotional Banner
            Container(
              padding: EdgeInsets.only(left: 12.w),
              height: 200.h,
              decoration: BoxDecoration(
                color: Colors.green[300],
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Stack(
                      clipBehavior: Clip.antiAlias,
                      children: [
                        Positioned(
                          top: 15.h,
                          right: -160.w,
                          child: Container(
                              height: 190.h,
                              width: 350.w,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      alignment: Alignment.centerRight,
                                      image: AssetImage(
                                        "assets/images/cart.png",
                                      )))),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0.0.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          child: Text(
                            'منتجات طازجة',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                        Text(
                          'تطلع من المزرعة و تجي لبابك',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        const SizedBox(height: 10.0),
                        Padding(
                          padding: EdgeInsets.only(right: 100.0.w),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                alignment: Alignment.center,
                                backgroundColor: Colors.red),
                            child: const Text('اطلب الان',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
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
