import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heart/core/app_export.dart';
import 'package:heart/core/utils/extension/widget.dart';
import 'package:heart/features/login/presentation/manager/login_cubit.dart';
import 'package:heart/features/main/presentation/pages/main_screen.dart';
import 'package:heart/features/register/presentation/pages/register_screen.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/custom_text_style.dart';
import '../../../../core/widgets/custom_app_bottom.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../core/widgets/show_toast.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
  listener: (context, state) {
    if(state is SignInLoadedState){
      showToast(text: state.message, state: ToastStates.success);
    } if(state is SignInErrState){
      showToast(text: state.message, state: ToastStates.error);
    }
  },
  builder: (context, state) {
    var c= context.read<LoginCubit>();
    return Form(
      key: c.key,
      child: Column(
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
            },),
          SizedBox(
            height: MediaQuery.of(context).size.height * .025,
          ),
        state is SignInLoadingState? const Center(child: CircularProgressIndicator()) : CustomAppBottom(
              label: AppStrings.login,
              onPressed: () async{
                if(c.key.currentState!.validate()){
                  await c.userSignIn();
                  const MainScreen().launch(
                    context,
                  );
                }

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
      ).paddingSymmetric(horizontal: 30),
    );
  },
);
  }
}
