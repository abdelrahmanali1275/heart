import 'package:flutter/material.dart';
import 'package:heart/core/utils/extension/int.dart';

import '../../../../core/utils/custom_text_style.dart';

class OtherContainer extends StatelessWidget {
  const OtherContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: const Color(0xff5C5A64),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
          children: [
            ListTile(
              leading: const Image(
                image: AssetImage("assets/images/img_email_1.png"),
                height: 15,
              ),
              title: Text(
                "user cuide",
                style: CustomTextStyle.kaiseiDecol_400_12White,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 20,
              ),
            ),
            const Divider( thickness: .5,color: Color(0xff444348)),
            ListTile(
              leading: const Image(
                image: AssetImage(
                  "assets/images/img_user_1.png",
                ),
                height: 15,
                color: Colors.black,
              ),
              title: Text(
                "termes & condition",
                style: CustomTextStyle.kaiseiDecol_400_12White,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 20,
              ),
            ),
            const Divider( thickness: .5,color: Color(0xff444348)),
            ListTile(
              leading: const Image(
                image: AssetImage("assets/images/img_email_1.png"),
                height: 15,
              ),
              title: Text(
                "privacy policy",
                style: CustomTextStyle.kaiseiDecol_400_12White,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 20,
              ),
            ),
            const Divider( thickness: .5,color: Color(0xff444348)),
            ListTile(
              leading: const Image(
                image: AssetImage("assets/images/img_padlock_1.png"),
                height: 15,
              ),
              title: Text(
                "help center",
                style: CustomTextStyle.kaiseiDecol_400_12White,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 20,
              ),
            ),]
      ),
    );
  }
}