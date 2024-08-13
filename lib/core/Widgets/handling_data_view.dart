import 'package:big_cart/core/enum/status_request.dart';
import 'package:flutter/material.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  final BuildContext acontext;
  final void Function()? onTap;
  const HandlingDataView({
    super.key,
    required this.statusRequest,
    required this.widget,
    required this.acontext,
    this.onTap,
  });
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
                  ),
                ),
              )
            : statusRequest == StatusRequest.serverfailure
                ? GestureDetector(
                    onTap: onTap,
                    child: Center(
                      child: Text(
                        "serverfailure",
                      ),
                    ),
                  )
                : statusRequest == StatusRequest.failure
                    ? GestureDetector(
                        onTap: onTap,
                        child: Center(
                          child: Text(
                            "No Data",
                          ),
                        ),
                      )
                    : widget;
  }
}
