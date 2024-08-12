import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffEEF9E4),
appBar: AppBar(
  title: Image.asset("assets/images/logo.png",height: 50,),
  centerTitle: true,

  actions: [

    Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: const Color(0xffDFF1E6),

          borderRadius: BorderRadius.circular(25)),
        margin: const EdgeInsets.symmetric(horizontal: 16.0),
        child:  IconButton(onPressed: (){}, icon: const Icon(Icons.notification_add_outlined)))],
  backgroundColor: Color(0xffEEF9E4),
  elevation: 0.0,
),
drawer: const Drawer(),
body:Container(
  decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/orderbackgraound.png"))),
margin: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 16.0),
  child:SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Card(
        color: Colors.white,
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.all(16.0),
            child: FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("رقم الطلب:22",style: TextStyle(color: Colors.black),),
                Text("عنوان التوصيل:شارع حدة -أمام سام مول ",style: TextStyle(color: Colors.black),),
                Text("اسم العميل:محمد علي ",style: TextStyle(color: Colors.black),),

              ],),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                 SizedBox(
                   width: 100,
                   height: 30,
                   child: MaterialButton(

                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                     color: const Color(0xffA7CA9A),
                     onPressed: (){},child: const FittedBox(child: Text("قبول الطلب",style: TextStyle(color: Colors.black))),),
                 ),
                 Container(
                   margin: const EdgeInsets.only(top: 5.0),
                   width: 100,
                   height: 30,
                   child: MaterialButton(
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                     color:  Colors.red,
                     onPressed: (){},child: const FittedBox(child: Text("إلغاء",style: TextStyle(color: Colors.white),)),),
                 )
                ],),
                ],),
            ),
          ),),
      ],
    ),
  ) ,) ,
    );
  }
}
