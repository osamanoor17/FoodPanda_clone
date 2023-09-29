import 'package:flutter/material.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late TextEditingController _fullNameController;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  bool _isPasswordVisible = false;

  @override
  void initState() {
    super.initState();
    _fullNameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  String? _validateFullName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Full Name is required';
    }
    return null;
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    } else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
        .hasMatch(value)) {
      return 'Invalid email format';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    } else if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _fullNameController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: 'Full Name',
                hintText: "Foods",
                border: OutlineInputBorder(),
              ),
              validator: _validateFullName,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.mail),
                labelText: 'Enter your email',
                hintText: "foods@gmail.com",
                border: OutlineInputBorder(),
              ),
              validator: _validateEmail,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Password',
                    hintText: "************",
                    border: OutlineInputBorder(),
                  ),
                  obscureText: !_isPasswordVisible,
                  validator: _validatePassword,
                ),
                IconButton(
                  // Eye icon button
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                  icon: Icon(
                    _isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 60),
                    child: Text(
                      "Already have an account?",
                      style: TextStyle(fontSize: 12, color: Colors.black54),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'login');
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 12, color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
