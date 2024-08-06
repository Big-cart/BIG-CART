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
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: Column(
          children: [
            // Search Bar
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'ابحث هنا',
                        border: InputBorder.none,
                        icon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.settings)),
              ],
            ),
            const SizedBox(height: 20.0),
            // Promotional Banner
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'منتجات طازجة',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text('تطلع من المزرعة و تجي لبابك'),
                  const SizedBox(height: 10.0),
                  ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    child: const Text('اطلب الان',
                        style: TextStyle(color: Colors.white)),
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
