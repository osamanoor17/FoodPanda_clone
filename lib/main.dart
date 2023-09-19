import 'package:ecommerce_clone/auth/signupscreen/signupscreen.dart';
import 'package:ecommerce_clone/splash_screen/splashscreen.dart';
import 'package:ecommerce_clone/welocme/welcome_page.dart';
import 'package:flutter/material.dart';

import 'auth/loginscreen/loginscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.light(
          useMaterial3: true,
        ), // Light mode theme
        darkTheme: ThemeData.dark(
          useMaterial3: true,
        ), // Dark mode theme
        themeMode: ThemeMode.system, //
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        routes: {
          'welcome': (context) => WelcomePage(),
          'login': (context) => LoginScreen(),
          'signup': (context) => SignupScreen(),
        });
  }
}
