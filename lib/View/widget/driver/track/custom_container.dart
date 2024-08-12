import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool? last;
  final bool? check;

  const CustomContainer(
      {super.key, required this.text, required this.icon, this.last = false, this.check=true});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 95,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.5),
                  color: check == false
                      ? const Color(0xffF0F0F0)
                      : const Color(0xffA7CA9A),
                ),
                height: 61.0,
                width: 61.0,
                child: Icon(
                  icon,
                  color: check == false ? const Color(0xffA7CA9A) : Colors.white,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                text,
                style: const TextStyle(color: Colors.black, fontSize: 22.0),
              ),
            ],
          ),
          if (last == false)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 29.5),
              width: 1.0,
              height: MediaQuery.of(context).size.width * 0.20,
              color: Colors.black,
            )
        ],
      ),
    );
  }
}
