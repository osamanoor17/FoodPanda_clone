import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodie/payment_screen/payment_screen.dart';
import 'package:foodie/settings/settings.dart';
import 'package:foodie/splash_screen/splashscreen.dart';
import 'package:foodie/terms/terms.dart';
import 'package:foodie/view_product/view_product.dart';
import 'package:foodie/vouchers_offers/voucher_offers.dart';
import 'package:foodie/welcome/welcome_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'MapPage/mappage.dart';
import 'addresses/addresses.dart';
import 'auth/forgetpassword/forgetpassword.dart';
import 'auth/loginscreen/loginscreen.dart';
import 'auth/signupscreen/signupscreen.dart';
import 'fav_screen/fav_screen.dart';
import 'help_center/help_center.dart';
import 'homepage/homepage.dart';
import 'homepage/my_cart.dart';
import 'homepage/profile.dart';
import 'invite/invite.dart';
import 'my_orders/my_orders.dart';
import 'order_confirm/order_confirm.dart';
import 'order_tracking/order_tracking.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(MyApp()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.light(
          useMaterial3: true,
        ).copyWith(
            textTheme: GoogleFonts.abelTextTheme(Theme.of(context).textTheme)),
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
          'mycart': (context) => const MyCart(),
          'myorders': (context) => const MyOrders(),
          'payment_screen': (context) => PaymentScreen(),
          'vouchers_offers': (context) => VouchersOffersScreen(),
          'my_profile': (context) => const Profile(),
          'order_confirm': (context) => OrderConfirm(),
          'order_tracking': (context) => const OrderTracking(),
          'fav_screen': (context) => FavoritesScreen(),
          'addresses': (context) => const Addresses(),
          'help': (context) => HelpCenterScreen(),
          'invite': (context) => InviteFriendScreen(),
          'settings': (context) => SettingsScreen(),
          'terms': (context) => TermsAndConditionsScreen(),
          'view_product': (context) => ViewProduct(),
        });
  }
}
