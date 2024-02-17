import 'package:flutter/material.dart';
import 'package:heart/core/app_export.dart';
import 'package:heart/core/utils/app_strings.dart';
import 'package:heart/core/utils/extension/widget.dart';
import 'package:heart/core/widgets/custom_app_bottom.dart';
import 'package:heart/features/login/presentation/pages/login_screen.dart';
import 'package:heart/features/register/presentation/pages/register_screen.dart';
import '../../../../core/utils/custom_text_style.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AppAssets.imgWelcomepage,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          const Spacer(
            flex: 3,
          ),
          Text(
            AppStrings.welcome,
            style: CustomTextStyle.kaisei_400_45,
          ),
          const Spacer(
            flex: 3,
          ),
          CustomAppBottom(
            label: AppStrings.login,
            onPressed: () {
              const LoginScreen().launch(context, isNewTask: true);
            },
          ).paddingSymmetric(horizontal: 30),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "don’t have an account ? ",
                style: CustomTextStyle.bodyLarge20Grey,
              ),
              Text(
                AppStrings.signUp2,
                style: CustomTextStyle.bodyLarge20,
              ).onTap(() {
                const RegisterScreen().launch(context);
              }),
            ],
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    ));
  }
}
