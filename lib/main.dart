import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:heart/config/theme/theme_helper.dart';
import 'core/helper/save_data.dart';
import 'features/on_boarding/presentation/pages/on_boarding.dart';

GlobalKey<NavigatorState>? navigatorGlobalKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.initShared();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorGlobalKey,
      title: 'Heart App',
      theme: theme,
      debugShowCheckedModeBanner: false,
      locale: const Locale('en', ''),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en', '')],
      home: const OnBoarding(),
    );
  }
}
