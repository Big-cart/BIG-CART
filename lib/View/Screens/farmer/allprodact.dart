import 'package:big_cart/core/Routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AllProdact extends StatefulWidget {
  const AllProdact({super.key});

  @override
  AllProdactState createState() => AllProdactState();
}

class AllProdactState extends State<AllProdact> {
  bool isAdding = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "إضافة عرض",
          style: TextStyle(color: Colors.black),
        ),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                Scaffold.of(context).openDrawer(); // فتح الـ Drawer
              },
            );
          },
        ),
        actions: [
          IconButton(
            icon: Transform.rotate(
              angle: 3.14,
              child: const Icon(Icons.arrow_back, color: Colors.black),
            ),
            onPressed: () {
              Get.toNamed(AppRoute.sections);
            },
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      drawer: Drawer(
        child: Container(
          color: Colors.green[100],
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: const Text('اسم المزارع'),
                accountEmail: const Text('username@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 73, 62, 62),
                  child:
                      Icon(Icons.account_circle, size: 40, color: Colors.green),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.info),
                title: const Text('نبذة عني'),
                onTap: () {
                  Get.toNamed(AppRoute.aboutMe);
                },
              ),
              ListTile(
                leading: const Icon(Icons.location_on),
                title: const Text('الموقع'),
                onTap: () {
                  // تنفيذ كود عند الضغط
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.exit_to_app),
                title: const Text('تسجيل الخروج'),
                onTap: () {
                  Get.toNamed(AppRoute.loginFarmer);
                },
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bacg1.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 3, // عدد المنتجات المضافة
                  itemBuilder: (context, index) {
                    return Card(
                      margin: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/sec1.png',
                              width: 60,
                              height: 60,
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Row(
                                    children: [
                                      Text(
                                        'تفاح أحمر',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                255, 35, 32, 29)),
                                      ),
                                      Spacer(),
                                      Text(
                                        'متوفر',
                                        style: TextStyle(
                                            color: Colors.green, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'مزرعة محمد علي',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'تاريخ الحصاد: 2024/5/2',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'قـطوف التفـاح بشكلهـا المميـز الطـازج وطعمهـا اللذيـذ. وهـذا بجـانب احتوائهـا علـى العديـد مـن الفيتاميـنات والعناصـر المغذيـة لصحـة الجسـم.',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.edit,
                                      color: Colors.orange),
                                  onPressed: () {
                                    // هنا ضع الكود الذي تريد تنفيذه عند الضغط على أيقونة التعديل
                                  },
                                ),
                                Switch(
                                  value: true,
                                  onChanged: (bool value) {},
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
