import 'package:flutter/material.dart';

import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:heart/config/theme/custom_text_style.dart';
import 'package:heart/core/app_export.dart';
import 'package:heart/core/utils/app_colors.dart';
import 'package:heart/core/utils/custom_text_style.dart';
import 'package:heart/core/utils/extension/widget.dart';
import 'package:heart/features/home/presentation/widgets/sales_data.dart';

import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:heart/core/app_export.dart';
import 'package:heart/core/utils/custom_text_style.dart';
import 'package:heart/core/utils/extension/widget.dart';

import 'sensory_widget.dart';

class HeartWidget extends StatelessWidget {
  const HeartWidget({
    super.key,
    required this.txt,
  });

  final String txt;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFD1A578), // #D1A578 in hex
                Color.fromRGBO(66, 60, 58, 0), // rgba(66, 60, 58, 0)
              ],
              stops: [0.0, 1.0], // 0% and 145.h%
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    txt,
                    style: CustomTextStyle.kaiseiDecol_700_40,
                  ),
                  Text(
                    "BPM",
                    style: CustomTextStyle.kaiseiDecol_700_11,
                  ).paddingOnly(bottom: 8, left: 5),
                  const Spacer(),
                  Image.asset(
                    AppAssets.imgHeartbeat1,
                    height: 35,
                  )
                ],
              ),
              Text(
                "Heart Rate",
                style: CustomTextStyle.kaiseiDecol_400_11,
              ),
              Container(
                height: 50,
                // Set the background color of the container to transparent
                color: Colors.transparent,
                child: SfCartesianChart(
                  // Set the background color of the chart to transparent
                  backgroundColor: Colors.transparent,
                  primaryXAxis: CategoryAxis(
                    isVisible: false, // Hide x-axis
                  ),
                  primaryYAxis: NumericAxis(
                    isVisible: false, // Hide y-axis
                  ),
                  plotAreaBorderWidth: 0,
                  // Hide plot area border
                  plotAreaBorderColor: Colors.transparent,
                  // Set plot area border color to transparent

                  series: <LineSeries<SalesData, String>>[
                    LineSeries<SalesData, String>(
                      dataSource: <SalesData>[
                        SalesData('Jan', 8),
                        SalesData('Feb', 1),
                        SalesData('Mar', 9),
                        SalesData('Apr', 7),
                        SalesData('Apr', 50),
                        SalesData('Apr', 6),
                        SalesData('Apr', 50),
                        SalesData('Apr', 7),
                        SalesData('Apr', 50),
                        SalesData('Apr', 9),
                        SalesData('May', 0)
                      ],
                      xValueMapper: (SalesData sales, _) => sales.year,
                      yValueMapper: (SalesData sales, _) => sales.sales,
                      color: Colors.green,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        const SensoryWidget(),
        30.height,
        CircleAvatar(
          radius: 90,
          backgroundImage: AssetImage("assets/images/circle.png",),
          child: Text("27",style: CustomTextStyle.kaisei_700_50_black,),
        )
      ],
    );
  }
}




