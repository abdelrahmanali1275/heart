import 'package:flutter/cupertino.dart';
import 'package:heart/core/utils/extension/widget.dart';
import 'package:heart/features/home/presentation/pages/home_screen.dart';
import 'package:heart/features/register/presentation/pages/register_screen.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/custom_text_style.dart';
import '../../../../core/widgets/custom_app_bottom.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Spacer(
          flex: 2,
        ),
        Text(
          AppStrings.login,
          style: CustomTextStyle.kaisei_400_45,
        ).center(),
        const Spacer(),
        Text(
          AppStrings.email,
          style: CustomTextStyle.kaisei_500_14_second,
        ).paddingSymmetric(horizontal: 15, vertical: 3),
        const CustomTextFormField(
          hintText: AppStrings.enterEmail,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .005,
        ),
        Text(
          AppStrings.pass,
          style: CustomTextStyle.kaisei_500_14_second,
        ).paddingSymmetric(horizontal: 15, vertical: 3),
        const CustomTextFormField(hintText: AppStrings.enterPass),
        SizedBox(
          height: MediaQuery.of(context).size.height * .025,
        ),
        CustomAppBottom(
            label: AppStrings.login,
            onPressed: () {
              const HomeScreen().launch(
                context,
              );
            }),
        const Spacer(
          flex: 2,
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
        const Spacer()
      ],
    ).paddingSymmetric(horizontal: 30);
  }
}
