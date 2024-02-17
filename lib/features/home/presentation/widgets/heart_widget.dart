import 'package:flutter/material.dart';
import 'package:heart/core/app_export.dart';
import 'package:heart/core/utils/custom_text_style.dart';
import 'package:heart/core/utils/extension/widget.dart';

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
          height: 200,
          margin: const EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: const LinearGradient(
                colors: [
                  Color(0xff736456),
                  Color(0xff25242A),
                ],
                begin: AlignmentDirectional.topCenter,
                end: AlignmentDirectional.bottomCenter),
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
              )
            ],
          ),
        ),
        Text("data"),
        Text("data"),
        Text("data"),
        Text("data"),
        Text("data"),
        Text("data"),
        Text("data"),
      ],
    );
  }
}
