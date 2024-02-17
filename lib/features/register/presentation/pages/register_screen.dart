import 'package:flutter/material.dart';
import 'package:heart/features/register/presentation/widgets/register_screen_body.dart';

import '../../../../core/utils/app_assets.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AppAssets.imgWelcomepage,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: const RegisterScreenBody(),
      ),
    );
  }
}
