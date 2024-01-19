
import 'package:ecommerce_clone/responsive.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: ScreenSize.blockSizeVertical(context, 10),
                      left: ScreenSize.blockSizeHorizontal(context, 5),
                    ),
                    child: Image.asset(
                      "assets/icons/icon4.png",
                      height: ScreenSize.blockSizeVertical(context, 30),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: ScreenSize.blockSizeHorizontal(context, 5),
                          top: ScreenSize.blockSizeVertical(context, 5),
                        ),
                        child: Text(
                          "WELCOME BACK TO",
                          style: TextStyle(
                            fontSize: ScreenSize.textMultiplier(context) * 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: ScreenSize.blockSizeHorizontal(context, 5),
                          top: ScreenSize.blockSizeVertical(context, 0.5),
                        ),
                        child: Text(
                          "FOODS APP",
                          style: TextStyle(
                            fontSize: ScreenSize.textMultiplier(context) * 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
               
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: ScreenSize.blockSizeHorizontal(context, 5),
                          top: ScreenSize.blockSizeVertical(context, 0.5),
                        ),
                        child: Text(
                          "Lorem ipsum dolor sit amet.\n"
                          "Nam aspernatur repellendus ut velit ",
                          style: TextStyle(
                            fontSize: ScreenSize.textMultiplier(context) * 15,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: ScreenSize.blockSizeVertical(context, 5)),
                  Row(
                    children: [
                      SizedBox(width: ScreenSize.blockSizeHorizontal(context, 6)),
                       SizedBox(height: ScreenSize.blockSizeVertical(context, 30)),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'signup');
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.red,
                          minimumSize: Size(
                            ScreenSize.blockSizeHorizontal(context, 40),
                            ScreenSize.blockSizeVertical(context, 8),
                          ),
                        ),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: ScreenSize.textMultiplier(context) * 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: ScreenSize.blockSizeHorizontal(context, 5)),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'login');
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.purple,
                          minimumSize: Size(
                            ScreenSize.blockSizeHorizontal(context, 40),
                            ScreenSize.blockSizeVertical(context, 8),
                          ),
                        ),
                        child: Text(
                          'Log in',
                          style: TextStyle(
                            fontSize: ScreenSize.textMultiplier(context) * 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: ScreenSize.blockSizeVertical(context, 10)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

