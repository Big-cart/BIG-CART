import 'package:big_cart/controller/google_map_controller.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapScreen extends StatelessWidget {
  const GoogleMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GoogleMapScreenControllerImp controller =Get.put(GoogleMapScreenControllerImp());
    return Scaffold(
        backgroundColor: Color(0xffEEF9E4),
        appBar: AppBar(
          title: Image.asset("assets/images/logo.png",height: 50,),
          centerTitle: true,

          backgroundColor: Color(0xffEEF9E4),
          elevation: 0.0,
        ),
        drawer: const Drawer(),
        body: GetBuilder<GoogleMapScreenControllerImp>(builder: (controller)=>Container(child: controller.kGooglePlex==null?const Center(child: CircularProgressIndicator(color:Color(0xffA7CA9A) ,)):
        GoogleMap(
          markers: controller.marker.toSet(),

          initialCameraPosition: controller.kGooglePlex!,
          onMapCreated: (GoogleMapController mapController) {
            controller.googleMapController.complete(mapController);
          },
        )
          ,),)


         ,
        bottomNavigationBar: CurvedNavigationBar(
            buttonBackgroundColor: const Color(0xffA7CA9A),
            // color: Color(0xffEEF9E4),
            backgroundColor: Colors.transparent,
            items: const <Widget>[
              Icon(Icons.favorite_border_outlined, size: 30,color: Color(0xffA7CA9A),),
              Icon(Icons.home_outlined, size: 30,color: Colors.white,),
              Icon(Icons.shopping_cart_outlined, size: 30,color: Color(0xffA7CA9A),),
            ],
            onTap: (index) {
            }

        ));
  }
}
