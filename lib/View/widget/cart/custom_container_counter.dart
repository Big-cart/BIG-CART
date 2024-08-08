import 'package:flutter/material.dart';

class CustomContainerCounter extends StatelessWidget {
  const CustomContainerCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 40.0,
      width: 120.0,
      decoration: BoxDecoration(
          color: const Color(0xffFDE1DA), borderRadius: BorderRadius.circular(20.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            height: 30.0,
            width: 30.0,
            decoration: BoxDecoration(
                color:  Colors.white, borderRadius: BorderRadius.circular(20.0)),
            child: const Icon(
              Icons.add,
              color: Color(0xff6D3805),
            ),
          ),
          const Text("2"),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            height: 30.0,
            width: 30.0,
            decoration: BoxDecoration(
                color:  Colors.white, borderRadius: BorderRadius.circular(20.0)),
            child: const Icon(
              Icons.remove,
              color: Color(0xff6D3805),
            ),
          ),

        ],),
    );
  }
}
