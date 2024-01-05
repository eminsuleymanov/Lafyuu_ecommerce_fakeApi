import 'package:flutter/material.dart';

import 'presentation/pages/splash/splash_page.dart';
import 'utils/constants/app_themes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-commerce',
      debugShowCheckedModeBanner: false,
      theme: AppThemes.appTheme,
      home: const SplashPage(),
    );
  }
}
