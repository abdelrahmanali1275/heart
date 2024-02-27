import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:heart/core/app_export.dart';
import 'package:heart/core/utils/app_colors.dart';
import 'package:heart/core/utils/extension/widget.dart';

import '../../../../core/utils/custom_text_style.dart';
import '../widgets/health_app_bar.dart';

class HealthScreen extends StatelessWidget {
  const HealthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const HealthAppBar(),
        100.height,
        Text(
          "Live\nstatistics",
          style: CustomTextStyle.kaisei_400_45,
          textAlign: TextAlign.start,
        ),
        40.height,
        Container(
          height: 100,
          width: double.maxFinite,
          decoration: BoxDecoration(
              color: AppColors.gray50, borderRadius: BorderRadius.circular(16)),
          child: ListTile(
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "82",
                  style: CustomTextStyles.black700_40_kaisei,
                ),
                10.width,
                Text("BPM", style: CustomTextStyles.black700_16_kaisei),
              ],
            ),
            subtitle: Text(
              "Average Heart Rate",
              style: CustomTextStyle.kaiseiDecol_400_11Black,
            ),
            trailing: Image.asset(
              "assets/images/img_heartbeat_1.png",
              height: 35,
            ),
          ),
        ),
        Transform.rotate(
          angle: -2.98 * pi / 300,
          child: Container(
            height: 100,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: AppColors.green800,
              borderRadius: BorderRadius.circular(16),
            ),
            child: ListTile(
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "95",
                    style: CustomTextStyle.kaiseiDecol_700_40,
                  ),
                  Text(
                    "/",
                    style: CustomTextStyle.kaiseiDecol_700_40,
                  ),
                  Text("100", style: CustomTextStyle.kaisei_700_16).paddingOnly(bottom: 7),
                ],
              ),
              subtitle: Text(
                "sensory",
                style: CustomTextStyle.kaiseiDecol_400_11Black,
              ),
              trailing: Container(
                height: 30.h,
                width: 30.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xff679342)
                ),
                child: Image.asset("assets/images/happy.png"))
            ),
          ),
        ),
        Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          height: 100,
          width: double.maxFinite,
          decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(16)),
          child: ListTile(
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "851",
                  style: CustomTextStyle.kaiseiDecol_700_40Black,
                ),
                10.width,
                Text("BPM", style: CustomTextStyle.kaiseiDecol_700_20Black),
              ],
            ),
            subtitle: Text(
              "R-R Interval",
              style: CustomTextStyle.kaiseiDecol_400_11Black,
            ),
            trailing: Container(
                height: 30,
                width: 30,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.whiteA700
                ),
                child: SvgPicture.asset("assets/images/img_vector_2.svg")),
          ),
        ),
        Transform.rotate(
          angle: 2.98 * pi / 180,
          child: Container(
            height: 100,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: AppColors.green800,
              borderRadius: BorderRadius.circular(16),
              gradient: const LinearGradient(colors: [
                Color(0xffDCA625),
                Color(0xff0A7BE4),
              ]),
            ),
            child: ListTile(
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "27",
                    style: CustomTextStyles.black700_40_kaisei,
                  ),
                  10.width,
                  Text("o", style: CustomTextStyles.black700_16_kaisei),
                ],
              ),
              subtitle: Text(
                "Temperature",
                style: CustomTextStyle.kaiseiDecol_400_11Black,
              ),
              trailing: Container(
                  height: 30,
                  width: 30,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.whiteA700
                  ),
                  child: Image.asset("assets/images/img_celsius_1.png")),
            ),
          ),
        ),
        80.height,
      ],
    ).paddingOnly(right: 32.w, left: 32.w, top: 20.h);
  }
}
