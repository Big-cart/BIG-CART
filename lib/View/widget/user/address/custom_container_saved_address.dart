import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:big_cart/core/enum/status_request.dart';

import '../../../../controller/users/address_controller.dart';
import 'custom_card_address_view.dart';

class CustomContainerSavedAddress extends GetView<ChooseAddressControllerImp> {
  const CustomContainerSavedAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child:  ListView.builder(
        itemCount: controller.addressDataList.length,

        itemBuilder: (context,i)=> controller.statusRequest==StatusRequest.loading?Center(child: CircularProgressIndicator(),): CustomCardAddressView(onTap: () {  },title: controller.addressDataList[i]['name'],subtitle: controller.addressDataList[i]['description'], type: controller.addressDataList[i]['city'],),),
    );
  }
}
