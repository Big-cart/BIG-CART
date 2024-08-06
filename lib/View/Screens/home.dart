// import 'package:flutter/material.dart';

// void main() {
//   runApp(DriverApp());
// }

// class DriverApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DriverHomePage(),
//     );
//   }
// }

// class DriverHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.grey[200],
//         elevation: 0,
//         title: Text('Driver', style: TextStyle(color: Colors.black)),
//         leading: Icon(Icons.menu, color: Colors.green),
//         actions: [
//           Icon(Icons.person, color: Colors.yellow),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             // Search Bar
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 16.0),
//               decoration: BoxDecoration(
//                 color: Colors.grey[200],
//                 borderRadius: BorderRadius.circular(30.0),
//               ),
//               child: TextField(
//                 decoration: InputDecoration(
//                   hintText: 'ابحث هنا',
//                   border: InputBorder.none,
//                   icon: Icon(Icons.search),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20.0),
//             // Promotional Banner
//             Container(
//               padding: EdgeInsets.all(16.0),
//               decoration: BoxDecoration(
//                 color: Colors.green[100],
//                 borderRadius: BorderRadius.circular(20.0),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'منتجات طازجة',
//                     style: TextStyle(
//                       fontSize: 24.0,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   Text('تطلع من المزرعة و تجي لبابك'),
//                   SizedBox(height: 10.0),
//                   ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(primary: Colors.red),
//                     child: Text('اطلب الان'),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 20.0),
//             // Grid of Farms
//             Expanded(
//               child: GridView.count(
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 10.0,
//                 mainAxisSpacing: 10.0,
//                 children: [
//                   buildFarmItem('مزرعة إيهاب', 'assets/farm1.jpg'),
//                   buildFarmItem('مزرعة ذكرى', 'assets/farm2.jpg'),
//                   buildFarmItem('مزرعة مرام', 'assets/farm3.jpg'),
//                   buildFarmItem('مزرعة أحمد', 'assets/farm4.jpg'),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         selectedItemColor: Colors.green,
//         unselectedItemColor: Colors.grey,
//         currentIndex: 3, // Set this according to the current tab
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
//           BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
//           BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
//         ],
//       ),
//     );
//   }

//   Widget buildFarmItem(String name, String imagePath) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(15.0),
//         color: Colors.white,
//       ),
//       child: Column(
//         children: [
//           Expanded(
//             child: Image.asset(imagePath, fit: BoxFit.cover),
//           ),
//           SizedBox(height: 8.0),
//           Text(name, style: TextStyle(fontSize: 16.0)),
//           SizedBox(height: 8.0),
//         ],
//       ),
//     );
//   }
// }