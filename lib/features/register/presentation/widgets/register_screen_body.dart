import 'package:flutter/material.dart';
import 'package:heart/core/utils/app_strings.dart';
import 'package:heart/core/utils/custom_text_style.dart';
import 'package:heart/core/utils/extension/widget.dart';
import 'package:heart/core/widgets/custom_app_bottom.dart';
import 'package:heart/core/widgets/custom_text_form_field.dart';

import '../../../login/presentation/pages/login_screen.dart';

class RegisterScreenBody extends StatelessWidget {
  const RegisterScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Spacer(
          flex: 2,
        ),
        Text(
          AppStrings.signUp,
          style: CustomTextStyle.kaisei_400_45,
        ).center(),
        const Spacer(),
        Text(
          AppStrings.name,
          style: CustomTextStyle.kaisei_500_14_second,
        ).paddingSymmetric(horizontal: 15, vertical: 3),
        const CustomTextFormField(
            hintText: AppStrings.enterName,

        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .005,
        ),
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
        const CustomTextFormField(
            hintText: AppStrings.enterPass
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .005,
        ),
        Text(
          AppStrings.confirmPass,
          style: CustomTextStyle.kaisei_500_14_second,
        ).paddingSymmetric(horizontal: 15, vertical: 3),
        const CustomTextFormField(
            hintText: AppStrings.enterPassAgain
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.height,
                  style: CustomTextStyle.kaisei_500_14_second,
                ).paddingSymmetric(horizontal: 15, vertical: 3),
                CustomTextFormField(
                  width: MediaQuery.of(context).size.width * .4,
                    hintText: AppStrings.enterHeight
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .035,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.weight,
                  style: CustomTextStyle.kaisei_500_14_second,
                ).paddingSymmetric(horizontal: 15, vertical: 3),
                CustomTextFormField(
                  width: MediaQuery.of(context).size.width * .4,
                    hintText: AppStrings.enterWeight

                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .025,
        ),
        CustomAppBottom(label: AppStrings.save,onPressed: (){
          const LoginScreen().launch(context,);
        }),
        const Spacer(
          flex: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "you have an account ? ",
              style: CustomTextStyle.bodyLarge20Grey,
            ),
            Text(
              AppStrings.login2,
              style: CustomTextStyle.bodyLarge20,
            ).onTap(() {
              const LoginScreen().launch(context);
            }),
          ],
        ),
        const Spacer(),
      ],
    ).paddingSymmetric(horizontal: 30);
  }
}
