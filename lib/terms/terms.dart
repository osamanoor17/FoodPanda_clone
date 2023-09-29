import 'package:flutter/material.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms and Conditions'),
      ),
      body: const SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '1. Introduction',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Welcome to our Food Delivery App. By using our app, you agree to abide by the following terms and conditions:',
            ),
            SizedBox(height: 16),
            Text(
              '2. Acceptance of Terms',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'By using this app, you accept and agree to be bound by these Terms and Conditions. If you do not agree with these terms, please do not use the app.',
            ),
            SizedBox(height: 16),
            Text(
              '3. Use of the Service',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'You must be at least 18 years old to use this app. You agree to use the app for lawful purposes and not engage in any illegal activities.',
            ),
            SizedBox(height: 16),
            Text(
              '4. User Account',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'You are responsible for maintaining the confidentiality of your account and password. Notify us immediately if you suspect any unauthorized access to your account.',
            ),
            SizedBox(height: 16),
            Text(
              '5. Changes to Terms',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'We reserve the right to modify these terms at any time. It is your responsibility to review the terms periodically for changes.',
            ),
            SizedBox(height: 16),
            Text(
              '6. Privacy Policy',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Your use of the app is also governed by our Privacy Policy. Please review our Privacy Policy for information on how we collect and use data.',
            ),
            SizedBox(height: 16),
            Text(
              '7. Contact Us',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'If you have any questions or concerns about these terms, please contact us at contact@example.com.',
            ),
          ],
        ),
      ),
    );
  }
}
