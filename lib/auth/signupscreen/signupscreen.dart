import 'package:foodie/auth/signupscreen/signupform.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
        body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 160,
                    width: 380,
                    child: Image.asset("assets/icons/icon5.png"),
                  ),
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Text(
                              "SIGN UP",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 35),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          IconButton(
                            icon: const FaIcon(
                              FontAwesomeIcons.facebook,
                              color: Colors.blueAccent,
                              size: 35,
                            ),
                            onPressed: () {},
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            icon: const FaIcon(
                              FontAwesomeIcons.instagram,
                              color: Colors.purple,
                              size: 35,
                            ),
                            onPressed: () {},
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            icon: const FaIcon(
                              FontAwesomeIcons.google,
                              color: Colors.red,
                              size: 35,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 5.0, top: 5),
                            child: Text(
                              "Or login with your email",
                              style: TextStyle(
                                  fontSize: 18, color: Colors.black54),
                            ),
                          ),
                        ],
                      ),
                      SignupForm(),
                    ],
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset("assets/icons/sidebar_grey.png"),
                ),
                Positioned(
                  top: 660,
                  right: 20,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'login');
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.transparent,
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
