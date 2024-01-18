import 'package:flutter/widgets.dart';

class ScreenSize {
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double blockSizeHorizontal(BuildContext context, double percent) {
    return screenWidth(context) * percent / 100;
    
  }

  static double blockSizeVertical(BuildContext context, double percent) {
    return screenHeight(context) * percent / 100;
  }

  static double textMultiplier(BuildContext context) {
    return screenHeight(context) * 0.0018;
  }

  static double imageSizeMultiplier(BuildContext context) {
    return screenWidth(context) * 0.005;
  }

  static double heightMultiplier(BuildContext context) {
    return screenHeight(context) * 0.0018;
  }

  // Add more methods as needed for different screen dimensions

  static bool isSmallScreen(BuildContext context) {
  return screenWidth(context) <= 360 && screenHeight(context) <= 600;
}

  static bool isMediumScreen(BuildContext context) {
    return (screenWidth(context) >= 600 && screenWidth(context) < 1200) &&
        (screenHeight(context) >= 600 && screenHeight(context) < 1200);
  }

  static bool isLargeScreen(BuildContext context) {
    return screenWidth(context) >= 1200 && screenHeight(context) >= 1200;
  }

  static bool is5InchScreen(BuildContext context) {
    // Example criteria, adjust as needed
    return screenWidth(context) >= 300 && screenWidth(context) <= 500 &&
        screenHeight(context) >= 500 && screenHeight(context) <= 800;
  }

  // Add methods for other inch categories as needed
  static bool is2InchScreen(BuildContext context) {
    // Example criteria, adjust as needed
    return screenWidth(context) < 200 && screenHeight(context) < 200;
  }

  static bool is3InchScreen(BuildContext context) {
    // Example criteria, adjust as needed
    return screenWidth(context) >= 200 && screenWidth(context) < 300 &&
        screenHeight(context) >= 200 && screenHeight(context) < 300;
  }
}
