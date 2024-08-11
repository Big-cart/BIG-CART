import 'package:flutter/material.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffEEF9E4),
      appBar: AppBar(
        title: Image.asset("assets/images/logo.png",height: 50,),
        centerTitle: true,

        backgroundColor: Color(0xffEEF9E4),
        elevation: 0.0,
      ),
      drawer: const Drawer(),
      body:Container(
        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/orderdetealsbackgound.png"))),
        margin: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 16.0),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              color: Colors.white,
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.all(16.0),
                child: const FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("رقم الطلب:22",style: TextStyle(color: Colors.black),),
                          Text("عنوان التوصيل:شارع حدة -أمام سام مول ",style: TextStyle(color: Colors.black),),
                          Text("اسم العميل:محمد علي ",style: TextStyle(color: Colors.black),),

                        ],),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("التاريخ :12\\5\\2024 ",style: TextStyle(color: Colors.black),),
                          Text("اليوم: الاربعاء ",style: TextStyle(color: Colors.black),),
                        ],),
                    ],),
                ),
              ),),
          ],
        ) ,) ,
    );
  }
}
