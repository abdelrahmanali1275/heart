import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heart/core/utils/app_colors.dart';
import 'package:heart/core/utils/app_strings.dart';
import 'package:heart/core/utils/custom_text_style.dart';
import 'package:heart/core/utils/extension/widget.dart';
import 'package:heart/features/home/presentation/widgets/home_screen_body.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                Color(0xff25242A),
                Color(0xff736456),
              ],
                  begin: AlignmentDirectional.topCenter,
                  end: AlignmentDirectional.bottomCenter)),
          child: const HomeScreenBody()),
    );
  }
}
