import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heart/core/utils/extension/widget.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/custom_text_style.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.welcome2,
          style: CustomTextStyle.kaisei_700_16,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: AppColors.primary,
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 15,
                    ).paddingAll(5),
                    Text(
                      "Ahmed Sayed",
                      style: CustomTextStyle.kaisei_400_16,
                    )
                  ],
                ),)),
            Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(25)),
                child: const Icon(
                  CupertinoIcons.bell,
                  color: Colors.black,
                ).paddingSymmetric(horizontal: 3)),


          ],
        )
      ],
    );
  }
}
