import 'dart:async';
import 'dart:ffi';
import 'package:big_cart/core/Routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

import '../../core/DataSource/Remote/address.dart';
import '../../core/Functions/handiling_data_controller.dart';
import '../../core/constant/app_colors.dart';
import '../../core/enum/status_request.dart';
import '../../main.dart';
abstract class ChooseAddressController extends GetxController {
onTapMap(LatLng position);
saveNewAddress();
getAddress();
}

class ChooseAddressControllerImp extends ChooseAddressController {
  List<Marker> marker = [];
  CameraPosition? kGooglePlex;
  var myPosition;
  AddressData addAddressData = AddressData(Get.find());
  StatusRequest statusRequest = StatusRequest.loading;

  late TextEditingController controllerCity;
  late TextEditingController controllerDescription;
  late TextEditingController controllerName;

  final Completer<GoogleMapController> googleMapController =
  Completer<GoogleMapController>();
  bool isSelected =false;
  @override
  void onInit() {
    controllerCity = TextEditingController();
    controllerDescription = TextEditingController();
    controllerName = TextEditingController();
    determinePosition();
    super.onInit();
  }

  Future<Position> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      Get.snackbar("Error", 'Location services are disabled.');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        Get.snackbar("Error", 'Location permissions are denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      Get.snackbar("Error",
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    await getCurrentLocation();
    return await Geolocator.getCurrentPosition();
  }

  getCurrentLocation() async {
    myPosition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    kGooglePlex = CameraPosition(
        target: LatLng(myPosition!.latitude, myPosition!.longitude),
        zoom: 19.151926040649414);
    marker.add(Marker(
        markerId: const MarkerId("1"),
        position: LatLng(myPosition!.latitude, myPosition!.longitude)));
    update();
  }

  @override
  onTapMap(position) {
    myPosition = position;
    update();
    marker.clear();
    marker.add(Marker(
        markerId: const MarkerId("1"),
        position: LatLng(myPosition!.latitude, myPosition!.longitude)));
  }


  @override
  saveNewAddress() async{

    statusRequest = StatusRequest.loading;
    Get.defaultDialog(
      titleStyle: TextStyle(color: Colors.black, fontFamily: "Almarai"),
      title: "يرحى الانتظار",
      content: CircularProgressIndicator(
        color: AppColors.profileColor,
      ),
    );

    var response = await addAddressData.postData(controllerName.text, controllerDescription.text, myPosition!.latitude.toString(), myPosition!.longitude.toString(), controllerCity.text);
    print(response);

    statusRequest =await handlingData(response);
    print("$statusRequest");
    if (response['id']!=null) {
      statusRequest =StatusRequest.succses;
      Get.snackbar("نجاح ", "تم حفظ العنوان");
      Get.toNamed(AppRoute.listOfOrders);
    }
    else{
      Get.snackbar("خطا ", "تم حفظ العنوان");
    }


  }
List addressDataList=[];
  @override
  getAddress() async{
    addressDataList.clear();
    statusRequest = StatusRequest.loading;
    Get.defaultDialog(
      titleStyle: TextStyle(color: Colors.black, fontFamily: "Almarai"),
      title: "يرجى الانتظار",
      content: CircularProgressIndicator(
        color: AppColors.profileColor,
      ),
    );
    var response = await addAddressData.getData();
    print("response from main");
    print(response);
    addressDataList.addAll(response);
    statusRequest =await handlingData(response);
    print("$statusRequest");
    if (statusRequest==StatusRequest.succses) {
      statusRequest =StatusRequest.succses;
      Get.back();
      update();
      for(int i=0;i<addressDataList.length;i++){
        print(addressDataList[i]);
      }
    }
    else{
      statusRequest==StatusRequest.failure;
      update();
    }


  }
}
