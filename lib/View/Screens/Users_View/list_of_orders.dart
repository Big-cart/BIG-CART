import 'package:flutter/material.dart';

class ListOfOrders extends StatefulWidget {
  const ListOfOrders({super.key});

  @override
  _ListOfOrdersState createState() => _ListOfOrdersState();
}

class _ListOfOrdersState extends State<ListOfOrders> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'قائمة الطلبات',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(Icons.notifications, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Transform.rotate(
              angle: 3.14,
              child: const Icon(Icons.arrow_back, color: Colors.black),
            ),
            onPressed: () {},
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/list_of_order.png"),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 270),
            Center(
              child: Container(
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 86, 94, 86).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TabBar(
                        controller: _tabController,
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.green,
                        indicator: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        tabs: const [
                          Tab(text: 'قيد الانتظار'),
                          Tab(text: 'الطلبات المنجزة'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 380,
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          ListView(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            children: [
                              OrderCard(
                                invoiceNumber: '22222455',
                                deliveryLocation: 'بينون',
                                totalAmount: '4000 ريال',
                                cardColor: Colors.white.withOpacity(0.5),
                                showCancelButton: true, // إظهار زر الإلغاء هنا
                              ),
                              OrderCard(
                                invoiceNumber: '22222456',
                                deliveryLocation: 'هايل',
                                totalAmount: '4000 ريال',
                                cardColor: Colors.white.withOpacity(0.5),
                                showCancelButton: true, // إظهار زر الإلغاء هنا
                              ),
                            ],
                          ),
                          ListView(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            children: [
                              OrderCard(
                                invoiceNumber: '22222456',
                                deliveryLocation: 'مذبح',
                                totalAmount: '4000 ريال',
                                cardColor: Colors.white.withOpacity(0.5),
                                showCancelButton: false, // إخفاء زر الإلغاء هنا
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OrderCard extends StatelessWidget {
  final String invoiceNumber;
  final String deliveryLocation;
  final String totalAmount;
  final Color cardColor;
  final bool showCancelButton; // خاصية جديدة للتحكم في إظهار زر الإلغاء

  const OrderCard({
    required this.invoiceNumber,
    required this.deliveryLocation,
    required this.totalAmount,
    required this.cardColor,
    required this.showCancelButton,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          color: cardColor,
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('رقم الفاتورة', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                    Text('توصيل إلى', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                    Text('الإجمالي', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(invoiceNumber, style: const TextStyle(fontSize: 13)),
                    Text(deliveryLocation, style: const TextStyle(fontSize: 13)),
                    Text(totalAmount, style: const TextStyle(fontSize: 13)),
                  ],
                ),
              ],
            ),
          ),
        ),
        if (showCancelButton) 
          Positioned(
            top: -10,
            right: 294,
            child: IconButton(
              icon: const Icon(Icons.cancel, color: Color.fromARGB(255, 29, 183, 67)),
              onPressed: () {},
            ),
          ),
      ],
    );
  }
}
