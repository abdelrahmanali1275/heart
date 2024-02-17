import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:heart/core/utils/app_colors.dart';
import 'package:heart/core/utils/custom_text_style.dart';

class CustomAppBottom extends StatelessWidget {
  const CustomAppBottom({Key? key, this.onPressed, required this.label})
      : super(key: key);
  final VoidCallback? onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          fixedSize: const Size(double.maxFinite, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),),
        child: Text(label,
            style: CustomTextStyle.kaisei_500_30),
      )
    ).animate().moveX(duration: 600.ms);
  }
}
