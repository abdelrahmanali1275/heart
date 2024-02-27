import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:heart/core/utils/extension/int.dart';

import '../../../../config/theme/custom_text_style.dart';
import 'dart:math' as math;

import '../../../../core/utils/app_colors.dart';

class SensoryWidget extends StatelessWidget {
  const SensoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 145.h,
          width: 145.w,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(30),
            color:const Color(0xffE8E6E6),
          ),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColors.whiteA700
                          ),
                          child: SvgPicture.asset("assets/images/img_vector_2.svg")),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("851   ",style: CustomTextStyles.black700_40_kaisei ,),
                          Text("MS",style: CustomTextStyles.black700_20_kaisei),
                        ],
                      ),
                      Text("R-R Interval",style:CustomTextStyles.grey400_11_kaisei)
                    ],
                  ),

                ],
              ),

            ],
          ),
        ),
         SizedBox(
          width: 20.w,
        ),
        Transform.rotate(
          angle: -10.68 * math.pi / 140,
          child: Container(
            height: 145.h,
            width: 145.w,
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(30),
              color: const Color(0xff6DB234),
            ),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(flex: 1,),
                Row(
                  children: [
                     SizedBox(width: 30.w,),
                    Container(
                        height: 30.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xff679342)
                        ),
                        child: Image.asset("assets/images/happy.png")),
                  ],
                ),
                const Spacer(flex: 2,),
                Center(
                  child: Column(
                    children: [
                      Text("95/100",style: CustomTextStyles.white700_22_kaisei,),
                      Text("sensory",style: CustomTextStyles.white400_11_kaisei,),
                    ],
                  ),
                ),
                const Spacer(flex: 4,),
              ],
            ),
          ),
        ),
      ],
    );
  }
}