import 'package:fleetops_mobile/core/styles/app_colors.dart';
import 'package:fleetops_mobile/features/auth/presentation/pages/register_page.dart';
import 'package:fleetops_mobile/features/auth/presentation/pages/splash_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

import 'features/auth/presentation/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.dmSansTextTheme(),
        colorScheme: .fromSeed(seedColor: Colors.black),
        scaffoldBackgroundColor: AppColors.backgroundLight,
      ),
      home: SplashPage(),
      routes: {
        LoginPage.routeName: (context) => const LoginPage(),
        RegisterPage.routeName: (context) => const RegisterPage(),
      },
    );
  }
}
