import 'package:ecommerce_clone/MapPage/mappage.dart';
import 'package:ecommerce_clone/auth/signupscreen/signupscreen.dart';
import 'package:ecommerce_clone/homepage/homepage.dart';
import 'package:ecommerce_clone/my_orders/my_orders.dart';
import 'package:ecommerce_clone/splash_screen/splashscreen.dart';
import 'package:ecommerce_clone/welocme/welcome_page.dart';
import 'package:flutter/material.dart';

import 'auth/forgetpassword/forgetpassword.dart';
import 'auth/loginscreen/loginscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
        ),
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        routes: {
          'welcome': (context) => const WelcomePage(),
          'login': (context) => const LoginScreen(),
          'signup': (context) => const SignupScreen(),
          'forgetpassword': (context) => ForgetPassword(),
          'mappage': (context) => const MapPage(),
          'homepage': (context) => HomePage(),
          'myorders': (context) => MyOrders(),
        });
  }
}
