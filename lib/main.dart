import 'package:ecommerce_clone/payment_screen/payment_screen.dart';
import 'package:ecommerce_clone/settings/settings.dart';
import 'package:ecommerce_clone/splash_screen/splashscreen.dart';
import 'package:ecommerce_clone/terms/terms.dart';
import 'package:ecommerce_clone/vouchers_offers/voucher_offers.dart';
import 'package:ecommerce_clone/welcome/welcome_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
import 'my_orders/my_order.dart';
import 'order_confirm/order_confirm.dart';
import 'order_tracking/order_tracking.dart';

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(const MyApp()));
  runApp(const MyApp());
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
        home: const SplashScreen(),
        routes: {
          'welcome': (context) =>  const WelcomePage(),
          'login': (context) =>  const LoginScreen(),
          'signup': (context) =>  const SignupScreen(),
          'forgetpassword': (context) =>  const ForgetPassword(),
          'mappage': (context) =>  const MapPage(),
          'homepage': (context) =>  const HomePage(),
          'mycart': (context) =>  const MyCart(),
          'myorders': (context) =>  const MyOrders(),
          'payment_screen': (context) =>  const PaymentScreen(),
          'vouchers_offers': (context) =>  const VouchersOffersScreen(),
          'my_profile': (context) =>  const Profile(),
          'order_confirm': (context) =>  const OrderConfirm(),
          'order_tracking': (context) =>  const OrderTracking(),
          'fav_screen': (context) =>  const FavoritesScreen(),
          'addresses': (context) =>  const Addresses(),
          'help': (context) => HelpCenterScreen(),
          'invite': (context) =>  const InviteFriendScreen(),
          'settings': (context) =>  const SettingsScreen(),
          'terms': (context) =>  const TermsAndConditionsScreen(),
          // 'view_product': (context) => ViewProduct(),
        });
  }
}
