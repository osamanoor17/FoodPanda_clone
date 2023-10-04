import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Privacy Policy',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Text(
                'Last Updated: October 4, 2023',
                style: TextStyle(fontSize: 14.0, color: Colors.grey),
              ),
              SizedBox(height: 20.0),
              Text(
                '1. Introduction',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'This Privacy Policy explains how we collect, use, and protect your personal information when you use our food delivery app.',
              ),
              SizedBox(height: 20.0),
              Text(
                '2. Information We Collect',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'We may collect the following types of information:',
              ),
              ListTile(
                leading: Icon(Icons.circle),
                title: Text(
                    'Personal Information: Your name, email address, phone number, and address.'),
              ),
              ListTile(
                leading: Icon(Icons.circle),
                title: Text(
                    'Location Information: Your current location for order delivery.'),
              ),
              SizedBox(height: 20.0),
              Text(
                '3. How We Use Your Information',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'We use your information for various purposes, including:',
              ),
              ListTile(
                leading: Icon(Icons.circle),
                title: Text(
                    'Processing Orders: To process and deliver your food orders.'),
              ),
              ListTile(
                leading: Icon(Icons.circle),
                title: Text(
                    'Improving Our Services: To enhance and personalize your experience.'),
              ),
              SizedBox(height: 20.0),
              Text(
                '4. Security',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'We take security measures to protect your information, but no method of transmission over the internet is 100% secure.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
