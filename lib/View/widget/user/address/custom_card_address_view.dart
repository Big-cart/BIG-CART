import 'package:flutter/material.dart';

class CustomCardAddressView extends StatelessWidget {
  final void Function()? onTap;
  final String title;
  final String subtitle;
  final String type;

  const CustomCardAddressView(
      {super.key,
      required this.onTap,
      required this.title,
      required this.subtitle,
      required this.type,
     });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Card(
          color: Colors.white,
          child: ListTile(
            title: Text(title, style: const TextStyle(color: Colors.green)),
            subtitle:
                Text(subtitle, style: const TextStyle(color: Colors.green)),
            leading: const Icon(
              Icons.location_city_outlined,
              color: Colors.green,
            ),
            trailing: Text(
              type,
              style: const TextStyle(color: Colors.green),
            ),
          ),
        ));
  }
}
