import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heart/core/app_export.dart';
import 'package:heart/core/utils/app_strings.dart';
import 'package:heart/core/utils/custom_text_style.dart';
import 'package:heart/core/utils/extension/widget.dart';
import 'package:heart/core/widgets/custom_app_bottom.dart';
import 'package:heart/core/widgets/custom_text_form_field.dart';
import 'package:heart/core/widgets/show_toast.dart';
import 'package:heart/features/register/presentation/manager/register_cubit.dart';

import '../../../login/presentation/pages/login_screen.dart';

class RegisterScreenBody extends StatelessWidget {
  const RegisterScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is SignUpLoadedState) {
          showToast(text: state.message, state: ToastStates.success);
        }
        if (state is SignUpErrState) {
          showToast(text: state.message, state: ToastStates.error);
        }
      },
      builder: (context, state) {
        var c = context.read<RegisterCubit>();
        print(state);
        return Form(
          key: c.key,
          child: Column(
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
              CustomTextFormField(
                hintText: AppStrings.enterName,
                controller: c.name,
                validator: (value) {
                  if (value!.isEmpty) {
                    return AppStrings.enterName;
                  }
                  return null;
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .005,
              ),
              Text(
                AppStrings.email,
                style: CustomTextStyle.kaisei_500_14_second,
              ).paddingSymmetric(horizontal: 15, vertical: 3),
              CustomTextFormField(
                hintText: AppStrings.enterEmail,
                controller: c.email,
                textInputType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    return AppStrings.enterEmail;
                  } else if (value.validateEmail == false) {
                    return AppStrings.pleaseEmailTrue;
                  }
                  return null;
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .005,
              ),
              Text(
                AppStrings.pass,
                style: CustomTextStyle.kaisei_500_14_second,
              ).paddingSymmetric(horizontal: 15, vertical: 3),
              CustomTextFormField(
                hintText: AppStrings.enterPass,
                controller: c.pass,
                textInputType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value!.isEmpty) {
                    return AppStrings.enterPass;
                  } else if (value.length < 8) {
                    return AppStrings.shortPassword;
                  }
                  return null;
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .005,
              ),
              Text(
                AppStrings.confirmPass,
                style: CustomTextStyle.kaisei_500_14_second,
              ).paddingSymmetric(horizontal: 15, vertical: 3),
              CustomTextFormField(
                hintText: AppStrings.enterPassAgain,
                controller: c.passConfirm,
                textInputType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value!.isEmpty) {
                    return AppStrings.enterPassAgain;
                  } else if (value != c.pass.text) {
                    return AppStrings.enterConfirmAgain;
                  }
                  return null;
                },
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
                        hintText: AppStrings.enterHeight,
                        textInputType: TextInputType.number,
                        controller: c.height,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return AppStrings.enterHeight;
                          }
                          return null;
                        },
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
                        hintText: AppStrings.enterWeight,
                        textInputType: TextInputType.number,
                        controller: c.lenght,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return AppStrings.enterWeight;
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .025,
              ),
              state is SignUpLoadingState
                  ? const Center(child: CircularProgressIndicator())
                  : CustomAppBottom(
                      label: AppStrings.save,
                      onPressed: () async {
                        if (c.key.currentState!.validate()) {
                          await c.userSignUp();
                          // const LoginScreen().launch(context);
                        }
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
          ),
        );
      },
    ).paddingSymmetric(horizontal: 30);
  }
}
