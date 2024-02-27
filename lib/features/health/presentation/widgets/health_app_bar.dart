import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:heart/core/utils/app_colors.dart';
import 'package:heart/core/utils/extension/int.dart';
import 'package:heart/core/utils/extension/widget.dart';

import '../../../../config/theme/custom_text_style.dart';

class HealthAppBar extends StatelessWidget {
  const HealthAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColors.white8),
            child: Icon(
              Icons.arrow_back,
              color: AppColors.black900,
            ).paddingAll(2)),
        Row(

          children: [
            SvgPicture.asset("assets/images/img_vector_2.svg",color: AppColors.white8,height: 10,),
            5.width,
            Text("82",style: CustomTextStyles.white400_11_kaisei,),
            5.width,
            CircleAvatar(
              radius: 10,
              backgroundColor: AppColors.whiteA700,
            ),

          ],
        )

      ],
    );
  }
}