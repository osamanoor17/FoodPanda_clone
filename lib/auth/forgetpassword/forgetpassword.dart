import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _phoneNumberController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  void _verifyPassword() {
    String phoneNumber = _phoneNumberController.text;
    String email = _emailController.text;

    if (phoneNumber == 'validPhoneNumber' && email == 'validEmail') {
      print('Password verification successful');
    } else {
      print('Password verification failed');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(242, 242, 242, 1),
        body: SingleChildScrollView(
          child: Stack(children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: SizedBox(
                    height: 180,
                    width: 380,
                    child: Image.asset("assets/icons/icon5.png"),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              "FORGET YOUR",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 23),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              "PASSWORD",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 35),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          children: [
                            Text(
                              "Select which contact details should we use to \n"
                              "reset your password",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: TextFormField(
                            controller: _phoneNumberController,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.phone_android),
                              labelText: 'Via Sms',
                              hintText: "+92 3987654321",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: TextFormField(
                            controller: _emailController,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.phone_android),
                              labelText: 'Via Email',
                              hintText: "foods12@gmail.com",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ],
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
                      'Reset',
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
