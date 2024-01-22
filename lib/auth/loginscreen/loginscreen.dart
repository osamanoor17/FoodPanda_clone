import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'loginform.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    height: 180,
                    width: 380,
                    child: Image.asset("assets/icons/icon5.png"),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 15.0, left: 18),
                        child: Row(
                          children: [
                            Text(
                              "LOG IN",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 35),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 15,
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
                            padding: EdgeInsets.only(left: 20.0, top: 5),
                            child: Text(
                              "Or login with your email",
                              style: TextStyle(
                                  fontSize: 18, color: Colors.black54),
                            ),
                          ),
                        ],
                      ),
                       const LoginForm(),
                    ],
                  ),
ElevatedButton(
  onPressed: () {
    Navigator.pushNamed(context, 'mappage');
  },
  child: const Padding(
    padding: EdgeInsets.all(10.0),
    child: Text(
      "Login",
      style: const TextStyle(color: Colors.white, fontSize: 20),
    ),
  ),
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.green,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    elevation: 8.0,
    minimumSize: const Size(250, 30), // Set the width and height here
  ),
),


                ],
              ),
            ),
            // Stack(
            //   children: [
            //     Align(
            //       alignment: Alignment.centerRight,
            //       child: Image.asset("assets/icons/sidebar_grey.png"),
            //     ),
            //     Positioned(
            //       top: 660,
            //       right: 20,
            //       child: TextButton(
            //         onPressed: () {
            //          
            //         },
            //         style: TextButton.styleFrom(
            //           foregroundColor: Colors.black,
            //           backgroundColor: Colors.transparent,
            //         ),
            //         child: const Text(
            //           'Log in',
            //           style: TextStyle(
            //             fontWeight: FontWeight.bold,
            //             color: Colors.white,
            //             fontSize: 16,
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
           
          ]),
        ),
      ),
    );
  }
}
