// import 'package:big_cart/view/Screens/search.dart';
import 'package:big_cart/View/Widgets/Auth/app_text_form_field.dart';
import 'package:big_cart/View/Widgets/app_button.dart';
import 'package:big_cart/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 5,
          child: GestureDetector(
            onTap: () {},
            child: AppTextFormField(
              hintText: "بحث",
              obscureText: false,
              icon: Icon(Icons.search, color: Colors.grey.shade400),
            ),
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Expanded(
          child: AppButton(
              buttonColor: AppColors.buttonGradientWhiteColor,
              onPressed: () {
                // Get.to(Search());
              },
              child: const Icon(Icons.filter_alt_outlined)),
        ),
      ],
    );
  }
}
