import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:heart/core/utils/app_colors.dart';
import 'package:heart/features/home/presentation/pages/home_screen.dart';
import 'package:heart/features/profile/presentation/pages/profile_screen.dart';

import '../../../health/presentation/pages/health_screen.dart';
import '../../../settings/presentation/pages/settings_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int visit = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF25242A), //m #736456 in hex
                Color(0xFF736456), // #736456 in hex
              ],
              stops: [0.3504, 0.9998], // Equivalent to 35.04% and 99.98%
            ),
          ),
          child: [
            const HealthScreen(),
            const HealthScreen(),
            const HomeScreen(),
            const ProfileScreen(),
            const SettingsScreen(),
          ][visit],
        ),
        bottomNavigationBar: ConvexAppBar(
          style: TabStyle.react,
          items: const[
            TabItem(icon: Image(image: AssetImage("assets/images/heart.png")),title: "Health"),
            TabItem(icon: Image(image: AssetImage("assets/images/img_pin_1.png")),title: "Track"),
            TabItem(icon: Image(image: AssetImage("assets/images/img_nav_home.png")),title: "Home"),
            TabItem(icon: Image(image: AssetImage("assets/images/img_user_1.png")),title: "profile"),
            TabItem(icon: Image(image: AssetImage("assets/images/img_settings_1.png")),title: "setting"),
          ],
          initialActiveIndex: visit,
          backgroundColor: AppColors.primary,
          curveSize: 80,
          color: AppColors.black900,
          activeColor: AppColors.black900,
          onTap: (int i) {
            setState(() {
              visit = i;
            });
          },
        ),
      ),
    );
  }
}
