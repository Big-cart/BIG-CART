// import 'package:big_cart/View/Screens/login.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//       designSize: const Size(430, 932),
//       minTextAdapt: true,
//       splitScreenMode: true,
//       // Use builder only if you need to use library outside ScreenUtilInit context
//       builder: (_, child) {
//         return MaterialApp(
//           debugShowCheckedModeBanner: false,
//           title: 'First Method',
//           // You can use the library anywhere in the app even in theme
//           theme: ThemeData(
//             primarySwatch: Colors.blue,
//             textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
//           ),
//           home: child,
//         );
//       },
//       child: const Login(),
//     );
//     // return MaterialApp(
//     //   title: 'BIG CART',
//     //   home:LoginScreen() ,
//     // );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(DriverApp());
}

class DriverApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child: DriverHomePage(),
    );
  }
}

class DriverHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.grey[200],

        elevation: 0,
        leading: Icon(Icons.menu, color: Colors.green),

        actions: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child:
                  CircleAvatar(child: Icon(Icons.person, color: Colors.red))),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search Bar
            Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: Icon(CupertinoIcons.settings)),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'ابحث هنا',
                        border: InputBorder.none,
                        icon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            // Promotional Banner
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'منتجات طازجة',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('تطلع من المزرعة و تجي لبابك'),
                  SizedBox(height: 10.0),
                  ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    child: Text('اطلب الان',
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
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
        items: [
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
          SizedBox(height: 8.0),
          Text(name, style: TextStyle(fontSize: 16.0)),
          SizedBox(height: 8.0),
        ],
      ),
    );
  }
}
