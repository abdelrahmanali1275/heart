import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';
import '../widgets/login_screen_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
          child: const LoginScreenBody()),
    );
  }
}
