// import 'package:flutter/material.dart';

// class LoginForm extends StatefulWidget {
//   const LoginForm({super.key});

//   @override
//   _LoginFormState createState() => _LoginFormState();
// }

// class _LoginFormState extends State<LoginForm> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   late TextEditingController _emailController;
//   late TextEditingController _passwordController;
//   bool _isPasswordVisible = false;

//   @override
//   void initState() {
//     super.initState();
//     _emailController = TextEditingController();
//     _passwordController = TextEditingController();
//   }

//   @override
//   void dispose() {
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }

//   String? _validateEmail(String? value) {
//     if (value == null || value.isEmpty) {
//       return 'Email is required';
//     } else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
//         .hasMatch(value)) {
//       return 'Invalid email format';
//     }
//     return null;
//   }

//   String? _validatePassword(String? value) {
//     if (value == null || value.isEmpty) {
//       return 'Password is required';
//     } else if (value.length < 6) {
//       return 'Password must be at least 6 characters';
//     }
//     return null;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextFormField(
//               controller: _emailController,
//               decoration: const InputDecoration(
//                 prefixIcon: Icon(Icons.mail),
//                 labelText: 'Enter your email',
//                 hintText: "Food@gmail.com",
//                 border: OutlineInputBorder(),
//               ),
//               validator: _validateEmail,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Stack(
//               alignment: Alignment.centerRight,
//               children: [
//                 TextFormField(
//                   controller: _passwordController,
//                   decoration: const InputDecoration(
//                     prefixIcon: Icon(Icons.lock),
//                     labelText: 'Password',
//                     hintText: "**********",
//                     border: OutlineInputBorder(),
//                   ),
//                   obscureText: !_isPasswordVisible,
//                   validator: _validatePassword,
//                 ),
//                 IconButton(
//                   // Eye icon button
//                   onPressed: () {
//                     setState(() {
//                       _isPasswordVisible = !_isPasswordVisible;
//                     });
//                   },
//                   icon: Icon(
//                     _isPasswordVisible
//                         ? Icons.visibility
//                         : Icons.visibility_off,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Row(
//             children: [
//               const SizedBox(
//                 width: 15,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 20),
//                 child: TextButton(
//                   onPressed: () {
//                     Navigator.pushNamed(context, 'forgetpassword');
//                   },
//                   child: const Text(
//                     'Forgot Password?',
//                     style: TextStyle(color: Colors.black54,fontSize:20),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 10),
//         ],
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  bool _isPasswordVisible = false;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
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
              controller: _emailController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.mail),
                labelText: 'Enter your email',
                hintText: "Food@gmail.com",
                border: OutlineInputBorder(),
              ),
              validator: _validateEmail,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isPasswordVisible = !_isPasswordVisible;
                });
              },
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: 'Password',
                      hintText: "**********",
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
          ),
          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'forgetpassword');
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
