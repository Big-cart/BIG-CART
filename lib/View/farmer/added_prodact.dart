import 'package:flutter/material.dart';

class AddedProduct extends StatefulWidget {
  const AddedProduct({super.key});

  @override
  _AddedProductState createState() => _AddedProductState();
}

class _AddedProductState extends State<AddedProduct> {
  bool isAdding = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "إضافة منتجات",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {
            
            showModalBottomSheet(
              context: context,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(60.0),
                ),
              ),
              builder: (context) => Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 10),
                    CircleAvatar(
                      radius: 40,
                      backgroundImage:
                          AssetImage('assets/images/sec1.png'), // مسار الصورة
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'اسم المستخدم',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text('الرئيسية'),
                      onTap: () {
                        // الانتقال لصفحة الرئيسية
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text('الإعدادات'),
                      onTap: () {
                        // الانتقال لصفحة الإعدادات
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.logout),
                      title: Text('تسجيل الخروج'),
                      onTap: () {
                        // تسجيل الخروج
                      },
                    ),
                  ],
                ),
              ),
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
              // العودة للخلف
            },
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
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
                            ), // صورة المنتج
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: const [
                                      Text(
                                        'تفاح أحمر',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.orange),
                                      ),
                                      Spacer(),
                                      Text(
                                        'متوفر',
                                        style: TextStyle(
                                            color: Colors.green, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                  const Text(
                                    'مزرعة محمد علي',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey),
                                  ),
                                  const SizedBox(height: 4),
                                  const Text(
                                    'تاريخ الحصاد: 2024/5/2',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey),
                                  ),
                                  const SizedBox(height: 8),
                                  const Text(
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
              if (isAdding)
                Container(
                  padding: const EdgeInsets.all(16.0),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'إدراج منتج جديد',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'اسم المزرعة',
                          filled: true,
                          fillColor: Colors.green[100],
                          suffixIcon: const Icon(Icons.edit),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'اليوم / التاريخ / السنة',
                          filled: true,
                          fillColor: Colors.green[100],
                          suffixIcon: const Icon(Icons.edit),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'وصف المنتج',
                          filled: true,
                          fillColor: Colors.green[100],
                          suffixIcon: const Icon(Icons.edit),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FloatingActionButton(
                            mini: true,
                            onPressed: () {},
                            child: const Icon(Icons.camera_alt),
                            backgroundColor: const Color.fromARGB(255, 64, 216, 87),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      isAdding = !isAdding;
                    });
                  },
                  child: isAdding
                      ? const Icon(Icons.close)
                      : const Icon(Icons.add),
                  backgroundColor: const Color.fromARGB(255, 61, 207, 127),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
