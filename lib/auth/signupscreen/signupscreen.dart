import 'package:ecommerce_clone/auth/signupscreen/signupform.dart';
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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 140,
              width: 400,
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
                            fontWeight: FontWeight.bold, fontSize: 38),
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
                        size: 40,
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
                        size: 40,
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
                        size: 40,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.0, top: 10),
                      child: Text(
                        "Or login with your email",
                        style: TextStyle(fontSize: 18, color: Colors.black54),
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
    );
  }
}
