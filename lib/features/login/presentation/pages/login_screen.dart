import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heart/features/login/presentation/manager/login_cubit.dart';

import '../../../../core/utils/app_assets.dart';
import '../widgets/login_screen_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
          child: BlocProvider(
            create: (context) => LoginCubit(),
            child: const LoginScreenBody(),
          )
      ),
    );
  }
}
