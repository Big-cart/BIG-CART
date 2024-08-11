import 'dart:async';
import 'dart:ffi';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
abstract class ChooseAddressController extends GetxController {
onTapMap(LatLng position);
}

class ChooseAddressControllerImp extends ChooseAddressController {
  List<Marker> marker = [];
  CameraPosition? kGooglePlex;
  var myPosition;

  final Completer<GoogleMapController> googleMapController =
  Completer<GoogleMapController>();

  @override
  void onInit() {
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
 myPosition =position;
 update();
 marker.clear();
 marker.add(Marker(
     markerId: const MarkerId("1"),
     position: LatLng(myPosition!.latitude, myPosition!.longitude)));
  }

}
