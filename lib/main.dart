import 'package:ecommerce_clone/MapPage/mappage.dart';
import 'package:ecommerce_clone/auth/signupscreen/signupscreen.dart';
import 'package:ecommerce_clone/homepage/homepage.dart';
import 'package:ecommerce_clone/homepage/my_cart.dart';
import 'package:ecommerce_clone/my_orders/my_orders.dart';
import 'package:ecommerce_clone/payment_screen/payment_screen.dart';
import 'package:ecommerce_clone/splash_screen/splashscreen.dart';
import 'package:ecommerce_clone/welocme/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'auth/forgetpassword/forgetpassword.dart';
import 'auth/loginscreen/loginscreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(MyApp()));
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.light(
          useMaterial3: true,).copyWith(textTheme: GoogleFonts.abelTextTheme(Theme.of(context).textTheme)),
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
          'mycart': (context) => MyCart(),
          'myorders': (context) => MyOrders(),
          'payment_screen' :(context)=>PaymentScreen(),
        });
  }
}
