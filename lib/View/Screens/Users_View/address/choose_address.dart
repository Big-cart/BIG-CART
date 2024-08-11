import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../controller/user/address_controller.dart';
import '../../../../core/Functions/button_sheet_adress.dart';
import '../../../widget/user/address/custom_text_form_filed.dart';

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
          Text("قم بتحديد موقعك على الخريطة"),
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
                Container(
                  height: MediaQuery.of(context).size.width,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(32.0),
                  decoration: const BoxDecoration(
                    color: Color(0xffE8F2E0),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                      topRight: Radius.circular(100),
                    ),
                  ),
                  child:  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'تفاصيل الموقــع ',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 12.0),
                      CustomTextFormFieldAddress(hintText: 'الاسم', icon: Icon(Icons.place_outlined),),
                      SizedBox(height: 6,),
                      CustomTextFormFieldAddress(hintText: 'المدينة', icon: Icon(Icons.location_city_outlined),),
                      SizedBox(height: 6,),
                      CustomTextFormFieldAddress(hintText: 'وصف الموقع', icon: Icon(Icons.description_outlined),),
                      SizedBox(height: 16,),
                      Center(
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                          minWidth: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.width * 0.1,
                          color: const Color(0xffC2DEA8),
                          onPressed: () {},
                          child:  FittedBox(
                              child: Text(
                                "تأكيد",
                                style: const TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                              )),
                        ),
                      )
                      // Add more widgets as needed
                    ],
                  ),
                ));
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
