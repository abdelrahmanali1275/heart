import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heart/core/utils/extension/int.dart';
import 'package:heart/core/utils/extension/widget.dart';
import 'package:heart/core/widgets/custom_app_bottom.dart';
import 'package:heart/features/profile/presentation/widgets/other_container.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/custom_text_style.dart';
import '../widgets/account_container.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.welcome2,
              style: CustomTextStyle.kaiseiDecol_700_16,
            ),
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
        ),
        10.height,
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: AppColors.primary,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 15,
                  ).paddingAll(5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "profile name",
                        style: CustomTextStyle.kaisei_300_8White,
                      ),Text(
                        "Ahmed Sayed",
                        style: CustomTextStyle.kaisei_400_16,
                      ),
                    ],
                  ),
                ],
              ),
              10.height,
              CustomPaint(
                size: Size(MediaQuery.of(context).size.width*.8, 1), // Adjust the size as needed
                painter: DottedLinePainter(),
              ),
              10.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("I D",style: CustomTextStyle.kaisei_400_16,),
                Text("  :  0 0 0 0 0 0 0 0 0",style: CustomTextStyle.kaisei_400_16Grey,),
                ],
              ),
            ],
          ),),
        10.height,
        Text(
          "a c c o u n t",
          style: CustomTextStyle.kaisei_700_16,
        ),
        10.height,
        const AccountContainer() ,
        10.height,
        Text(
          "o t h e r",
          style: CustomTextStyle.kaisei_700_16,
        ),
        10.height,
        const OtherContainer(),
        10.height,
        CustomAppBottom(label: "S I G N   O U T",onPressed: (){},)
      ],
    ).paddingSymmetric(horizontal: 32.w);
  }
}

class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xffC6C6C6) // Change color as needed
      ..strokeWidth = 1 // Change thickness as needed
      ..style = PaintingStyle.stroke;

    final dashWidth = 3; // Change dash width as needed
    final dashSpace = 1; // Change dash space as needed
    double startX = 0;

    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, 0),
        Offset(startX + dashWidth, 0),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
