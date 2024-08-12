import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../controller/users/address_controller.dart';
import '../../../../core/Functions/button_sheet_adress.dart';
import '../../../widget/user/address/custom_container_new_address.dart';
import '../../../widget/user/address/custom_container_saved_address.dart';

class ChooseAddress extends StatelessWidget {
  const ChooseAddress({super.key});

  @override
  Widget build(BuildContext context) {
    ChooseAddressControllerImp controller =
        Get.put(ChooseAddressControllerImp());
    return Scaffold(
      backgroundColor: Color(0xffEEF9E4),
      appBar: AppBar(
        title: Image.asset(
          "assets/images/logo.png",
          height: 50,
        ),
        centerTitle: true,
        backgroundColor: Color(0xffEEF9E4),
        elevation: 0.0,
      ),
      drawer: const Drawer(),
      body: Column(
        children: [
          Text("قم بتحديد موقعك على الخريطة\n اوقم باختيار عنوان محفوظ مسبقا"),
          GetBuilder<ChooseAddressControllerImp>(
            builder: (controller) => Container(
              child: controller.kGooglePlex == null
                  ? const Center(
                      child: CircularProgressIndicator(
                      color: Color(0xffA7CA9A),
                    ))
                  : Expanded(
                      child: GoogleMap(
                        markers: controller.marker.toSet(),
                        onTap: (position) {
                          controller.onTapMap(position);
                        },
                        initialCameraPosition: controller.kGooglePlex!,
                        onMapCreated: (GoogleMapController mapController) {
                          controller.googleMapController
                              .complete(mapController);
                        },
                      ),
                    ),
            ),
          ),
        ],
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          minWidth: MediaQuery.of(context).size.width * 0.5,
          height: MediaQuery.of(context).size.width * 0.1,
          color: const Color(0xffC2DEA8),
          onPressed: () {
            showMyBottomSheet(
                context,
                GetBuilder<ChooseAddressControllerImp>(
                    builder: (controller) => Container(
                          height: MediaQuery.of(context).size.width,
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(32.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        controller.isSelected = true;
                                        controller.getAddress();
                                        controller.update();
                                      },
                                      child: Text(
                                        "العناوين المحفوظة",
                                        style: TextStyle(
                                          color: controller.isSelected
                                              ? Colors.green
                                              : Colors.grey,
                                          fontSize: 20,
                                          fontWeight: controller.isSelected
                                              ? FontWeight.bold
                                              : FontWeight.normal,
                                          decoration: controller.isSelected
                                              ? TextDecoration.underline
                                              : TextDecoration.none,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    GestureDetector(
                                      child: Text(
                                        "عنوان جديد",
                                        style: TextStyle(
                                          color: controller.isSelected
                                              ? Colors.grey
                                              : Colors.green,
                                          fontSize: 20,
                                          fontWeight: controller.isSelected
                                              ? FontWeight.normal
                                              : FontWeight.bold,
                                          decoration: controller.isSelected
                                              ? TextDecoration.none
                                              : TextDecoration.underline,
                                        ),
                                      ),
                                      onTap: () {
                                        controller.isSelected = false;
                                        controller.update();
                                      },
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                if (controller.isSelected)
                                  CustomContainerSavedAddress()
                                else
                                  CustomContainerNewAddress(),
                              ],
                            ),
                          ),
                        )));

          },
          child: const FittedBox(
              child: Text(
            "التالي",
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
