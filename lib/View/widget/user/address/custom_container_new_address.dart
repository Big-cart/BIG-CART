import 'package:big_cart/controller/users/address_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_text_form_filed.dart';

class CustomContainerNewAddress extends GetView<ChooseAddressControllerImp> {
  const CustomContainerNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.width,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(bottom: 32.0),
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
          CustomTextFormFieldAddress(
            controller: controller.controllerName,
            hintText: 'الاسم', icon: Icon(Icons.place_outlined),),
          SizedBox(height: 6,),
          CustomTextFormFieldAddress(
            controller: controller.controllerCity,
            hintText: 'المدينة', icon: Icon(Icons.location_city_outlined),),
          SizedBox(height: 6,),
          CustomTextFormFieldAddress(
            controller: controller.controllerDescription,
            hintText: 'وصف الموقع', icon: Icon(Icons.description_outlined),),
          SizedBox(height: 16,),
          Center(
            child: MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
              minWidth: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.width * 0.1,
              color: const Color(0xffC2DEA8),
              onPressed: () {

                if(controller.controllerDescription.text.isEmpty || controller.controllerName.text.isEmpty || controller.controllerCity.text.isEmpty)
                {
                  Get.snackbar("خطا ", "هناك حقول فارغة");
                }
                else{
                  controller.saveNewAddress();

                }
              },
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
    );
  }
}
