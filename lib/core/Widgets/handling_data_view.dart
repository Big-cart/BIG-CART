import 'package:big_cart/core/enum/status_request.dart';
import 'package:flutter/material.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget? widget;
  final BuildContext acontext;
  final void Function()? onTap;
  const HandlingDataView({
    Key? key,
    required this.statusRequest,
    this.widget,
    required this.acontext,
    this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? const Center(child: CircularProgressIndicator())
        : statusRequest == StatusRequest.offlinefailure
            ? GestureDetector(
                onTap: onTap,
                child: Center(
                  child: Text(
                    "offline",
                    style: TextStyle(
                        color: Theme.of(acontext).textTheme.bodyMedium!.color),
                  ),
                ),
              )
            : statusRequest == StatusRequest.serverfailure
                ? GestureDetector(
                    onTap: onTap,
                    child: Center(
                      child: Text(
                        "serverfailure",
                        style: TextStyle(
                            color:
                                Theme.of(acontext).textTheme.bodyMedium!.color),
                      ),
                    ),
                  )
                : statusRequest == StatusRequest.failure
                    ? GestureDetector(
                        onTap: onTap,
                        child: Center(
                          child: Text(
                            "No Data",
                            style: TextStyle(
                                color: Theme.of(acontext)
                                    .textTheme
                                    .bodyMedium!
                                    .color),
                          ),
                        ),
                      )
                    : widget!;
  }
}
