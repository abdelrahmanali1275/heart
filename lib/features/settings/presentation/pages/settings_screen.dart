import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:heart/core/app_export.dart';
import 'package:heart/core/utils/extension/widget.dart';

import '../../../../core/utils/custom_text_style.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        70.height,
        Text(
          "Settings",
          style: CustomTextStyle.kaisei_400_48,
        ),
        50.height,
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 30.h),
          decoration: BoxDecoration(
              color: const Color.fromRGBO(101, 95, 101, 0.52),
              borderRadius: BorderRadius.circular(25)),
          child: Column(
            children: [
              ListTile(
                leading: const Image(
                  image: AssetImage(
                    "assets/images/img_settings_1.png",
                  ),
                  height: 15,
                  color: Colors.black,
                ),
                title: Text(
                  "GENERAL",
                  style: CustomTextStyle.kaiseiDecol_400_12White,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              const Divider(color: Color(0xff9C9BA1), thickness: .5),
              ListTile(
                leading: const Image(
                  image: AssetImage("assets/images/img_exchange_1.png"),
                  height: 15,
                ),
                title: Text(
                  "CHANGE PROFILE",
                  style: CustomTextStyle.kaiseiDecol_400_12White,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              const Divider(color: Color(0xff9C9BA1), thickness: .5),
              ListTile(
                leading: const Image(
                  image: AssetImage("assets/images/img_settings_2.png"),
                  height: 15,
                ),
                title: Text(
                  "CONTROL CENTER",
                  style: CustomTextStyle.kaiseiDecol_400_12White,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              const Divider(color: Color(0xff9C9BA1), thickness: .5),
              ListTile(
                leading: const Image(
                  image: AssetImage("assets/images/home.png"),
                  height: 15,
                ),
                title: Text(
                  "HOME SCREEN",
                  style: CustomTextStyle.kaiseiDecol_400_12White,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              const Divider(color: Color(0xff9C9BA1), thickness: .5),
              ListTile(
                leading: const Image(
                  image: AssetImage("assets/images/img_face_id_1.png"),
                  height: 15,
                ),
                title: Text(
                  "FACE ID & PASSCODE",
                  style: CustomTextStyle.kaiseiDecol_400_12White,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              const Divider(color: Color(0xff9C9BA1), thickness: .5),
              ListTile(
                leading: const Image(
                  image: AssetImage("assets/images/img_wallaper.png"),
                  height: 15,
                ),
                title: Text(
                  "WALLPAPER",
                  style: CustomTextStyle.kaiseiDecol_400_12White,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              const Divider(color: Color(0xff9C9BA1), thickness: .5),
            ],
          ),
        )
      ],
    ).paddingSymmetric(horizontal: 32.w);
  }
}
