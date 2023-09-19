import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100.0, left: 35),
                child: Image.asset(
                  "assets/icons/icon4.png",
                  height: 330,
                ),
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 25.0, top: 75),
                    child: Text(
                      "WELCOME BACK TO",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 25.0, top: 1),
                    child: Text(
                      "FOODS APP",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 25.0, top: 10),
                    child: Text(
                      "Lorem ipsum dolor sit amet.\n"
                      "Nam aspernatur repellendus ut velit ",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Row(
                children: [
                  const SizedBox(width: 80),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      minimumSize: const Size(120, 50),
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.purple,
                      minimumSize: const Size(120, 50),
                    ),
                    child: const Text(
                      'Log in',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
            ],
          ),
        ],
      ),
    );
  }
}
